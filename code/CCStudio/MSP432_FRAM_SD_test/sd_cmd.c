#include "sd_cmd.h"


//*****************************************************************************
//
// This is the table that holds the command names, implementing functions, and
// brief description.
//
//*****************************************************************************
tCmdLineEntry g_psCmdTable[] = {
		{ "help", Cmd_help, "Display list of commands" }, { "h", Cmd_help,
				"alias for help" }, { "?", Cmd_help, "alias for help" }, { "ls",
				Cmd_ls, "Display list of files" }, { "chdir", Cmd_cd,
				"Change directory" }, { "cd", Cmd_cd, "alias for chdir" }, {
				"pwd", Cmd_pwd, "Show current working directory" }, { "cat",
				Cmd_cat, "Show contents of a text file" }, { 0, 0, 0 } };


//*****************************************************************************
//
// This function implements the "help" command.  It prints a simple list of the
// available commands with a brief description.
//
//*****************************************************************************
int Cmd_help(int argc, char *argv[]) {
	tCmdLineEntry *psEntry;

	// Print some header text.
	printf("\nAvailable commands\r\n");
	printf("------------------\r\n");

	// Point at the beginning of the command table.
	psEntry = &g_psCmdTable[0];

	// Enter a loop to read each entry from the command table.  The end of the
	// table has been reached when the command name is NULL.
	while (psEntry->pcCmd) {
		// Print the command name and the brief description.
		printf("%6s: %s\r\n", psEntry->pcCmd, psEntry->pcHelp);

		// Advance to the next entry in the table.
		psEntry++;
	}

	// Return success.
	return (0);
}

//*****************************************************************************
//
// This function implements the "ls" command.  It opens the current directory
// and enumerates through the contents, and prints a line for each item it
// finds.  It shows details such as file attributes, time and date, and the
// file size, along with the name.  It shows a summary of file sizes at the end
// along with free space.
//
//*****************************************************************************
int Cmd_ls(int argc, char *argv[]) {
	uint32_t ui32TotalSize;
	uint32_t ui32FileCount;
	uint32_t ui32DirCount;
	FRESULT iFResult;
	FATFS *psFatFs;
	char *pcFileName;
#if _USE_LFN
	char pucLfn[_MAX_LFN + 1];
	g_sFileInfo.lfname = pucLfn;
	g_sFileInfo.lfsize = sizeof(pucLfn);
#endif

	//
	// Open the current directory for access.
	//
	iFResult = f_opendir(&g_sDirObject, g_pcCwdBuf);

	//
	// Check for error and return if there is a problem.
	//
	if (iFResult != FR_OK) {
		return ((int) iFResult);
	}

	ui32TotalSize = 0;
	ui32FileCount = 0;
	ui32DirCount = 0;

	//
	// Give an extra blank line before the listing.
	//
	printf("\r\n");

	//
	// Enter loop to enumerate through all directory entries.
	//
	for (;;) {
		//
		// Read an entry from the directory.
		//
		iFResult = f_readdir(&g_sDirObject, &g_sFileInfo);

		//
		// Check for error and return if there is a problem.
		//
		if (iFResult != FR_OK) {
			return ((int) iFResult);
		}

		//
		// If the file name is blank, then this is the end of the listing.
		//
		if (!g_sFileInfo.fname[0]) {
			break;
		}

		//
		// If the attribue is directory, then increment the directory count.
		//
		if (g_sFileInfo.fattrib & AM_DIR) {
			ui32DirCount++;
		}

		//
		// Otherwise, it is a file.  Increment the file count, and add in the
		// file size to the total.
		//
		else {
			ui32FileCount++;
			ui32TotalSize += g_sFileInfo.fsize;
		}

#if _USE_LFN
		pcFileName = (
				(*g_sFileInfo.lfname) ? g_sFileInfo.lfname : g_sFileInfo.fname);
#else
		pcFileName = g_sFileInfo.fname;
#endif
		//
		// Print the entry information on a single line with formatting to show
		// the attributes, date, time, size, and name.
		//
		printf("%c%c%c%c%c %u/%02u/%02u %02u:%02u %9u  %s\r\n",
				(g_sFileInfo.fattrib & AM_DIR) ? 'D' : '-',
				(g_sFileInfo.fattrib & AM_RDO) ? 'R' : '-',
				(g_sFileInfo.fattrib & AM_HID) ? 'H' : '-',
				(g_sFileInfo.fattrib & AM_SYS) ? 'S' : '-',
				(g_sFileInfo.fattrib & AM_ARC) ? 'A' : '-',
				(g_sFileInfo.fdate >> 9) + 1980, (g_sFileInfo.fdate >> 5) & 15,
				g_sFileInfo.fdate & 31, (g_sFileInfo.ftime >> 11),
				(g_sFileInfo.ftime >> 5) & 63, g_sFileInfo.fsize, pcFileName);
	}

	//
	// Print summary lines showing the file, dir, and size totals.
	//
	printf("\n%4u File(s),%10u bytes total\r\n%4u Dir(s)", ui32FileCount,
			ui32TotalSize, ui32DirCount);

	//
	// Get the free space.
	//
	iFResult = f_getfree("/", (DWORD *) &ui32TotalSize, &psFatFs);

	//
	// Check for error and return if there is a problem.
	//
	if (iFResult != FR_OK) {
		return ((int) iFResult);
	}

	//
	// Display the amount of free space that was calculated.
	//
	//printf(", %10uK bytes free\r\n", (ui32TotalSize * psFatFs->free_clust / 2));
	// Not sure about this yet. Removing ui32TotalSize give the correct value.
	printf(", %10uK bytes free\r\n", ( psFatFs->free_clust / 2));

	//
	// Made it to here, return with no errors.
	//
	return (0);
}

//*****************************************************************************
//
// This function implements the "cd" command.  It takes an argument that
// specifies the directory to make the current working directory.  Path
// separators must use a forward slash "/".  The argument to cd can be one of
// the following:
//
// * root ("/")
// * a fully specified path ("/my/path/to/mydir")
// * a single directory name that is in the current directory ("mydir")
// * parent directory ("..")
//
// It does not understand relative paths, so dont try something like this:
// ("../my/new/path")
//
// Once the new directory is specified, it attempts to open the directory to
// make sure it exists.  If the new path is opened successfully, then the
// current working directory (cwd) is changed to the new path.
//
//*****************************************************************************
int Cmd_cd(int argc, char *argv[]) {
	uint_fast8_t ui8Idx;
	FRESULT iFResult;

	//
	// Copy the current working path into a temporary buffer so it can be
	// manipulated.
	//
	strcpy(g_pcTmpBuf, g_pcCwdBuf);

	//
	// If the first character is /, then this is a fully specified path, and it
	// should just be used as-is.
	//
	if (argv[1][0] == '/') {
		//
		// Make sure the new path is not bigger than the cwd buffer.
		//
		if (strlen(argv[1]) + 1 > sizeof(g_pcCwdBuf)) {
			printf("Resulting path name is too long\r\n");
			return (0);
		}

		//
		// If the new path name (in argv[1])  is not too long, then copy it
		// into the temporary buffer so it can be checked.
		//
		else {
			strncpy(g_pcTmpBuf, argv[1], sizeof(g_pcTmpBuf));
		}
	}

	//
	// If the argument is .. then attempt to remove the lowest level on the
	// CWD.
	//
	else if (!strcmp(argv[1], "..")) {
		//
		// Get the index to the last character in the current path.
		//
		ui8Idx = strlen(g_pcTmpBuf) - 1;

		//
		// Back up from the end of the path name until a separator (/) is
		// found, or until we bump up to the start of the path.
		//
		while ((g_pcTmpBuf[ui8Idx] != '/') && (ui8Idx > 1)) {
			//
			// Back up one character.
			//
			ui8Idx--;
		}

		//
		// Now we are either at the lowest level separator in the current path,
		// or at the beginning of the string (root).  So set the new end of
		// string here, effectively removing that last part of the path.
		//
		g_pcTmpBuf[ui8Idx] = 0;
	}

	//
	// Otherwise this is just a normal path name from the current directory,
	// and it needs to be appended to the current path.
	//
	else {
		//
		// Test to make sure that when the new additional path is added on to
		// the current path, there is room in the buffer for the full new path.
		// It needs to include a new separator, and a trailing null character.
		//
		if (strlen(g_pcTmpBuf) + strlen(argv[1]) + 1 + 1 > sizeof(g_pcCwdBuf)) {
			printf("Resulting path name is too long\r\n");
			return (0);
		}

		//
		// The new path is okay, so add the separator and then append the new
		// directory to the path.
		//
		else {
			//
			// If not already at the root level, then append a /
			//
			if (strcmp(g_pcTmpBuf, "/")) {
				strcat(g_pcTmpBuf, "/");
			}

			//
			// Append the new directory to the path.
			//
			strcat(g_pcTmpBuf, argv[1]);
		}
	}

	//
	// At this point, a candidate new directory path is in chTmpBuf.  Try to
	// open it to make sure it is valid.
	//
	iFResult = f_opendir(&g_sDirObject, g_pcTmpBuf);

	//
	// If it can't be opened, then it is a bad path.  Inform the user and
	// return.
	//
	if (iFResult != FR_OK) {
		printf("cd: %s\r\n", g_pcTmpBuf);
		return ((int) iFResult);
	}

	//
	// Otherwise, it is a valid new path, so copy it into the CWD.
	//
	else {
		strncpy(g_pcCwdBuf, g_pcTmpBuf, sizeof(g_pcCwdBuf));
	}

	//
	// Return success.
	//
	return (0);
}

//*****************************************************************************
//
// This function implements the "pwd" command.  It simply prints the current
// working directory.
//
//*****************************************************************************
int Cmd_pwd(int argc, char *argv[]) {

	printf("\r\n");

	//
	// Print the CWD to the console.
	//
	printf("%s\r\n", g_pcCwdBuf);

	//
	// Return success.
	//
	return (0);
}

//*****************************************************************************
//
// This function implements the "cat" command.  It reads the contents of a file
// and prints it to the console.  This should only be used on text files.  If
// it is used on a binary file, then a bunch of garbage is likely to printed on
// the console.
//
//*****************************************************************************
int Cmd_cat(int argc, char *argv[]) {
	FRESULT iFResult;
	uint32_t ui32BytesRead;

	//
	// First, check to make sure that the current path (CWD), plus the file
	// name, plus a separator and trailing null, will all fit in the temporary
	// buffer that will be used to hold the file name.  The file name must be
	// fully specified, with path, to FatFs.
	//
	if (strlen(g_pcCwdBuf) + strlen(argv[1]) + 1 + 1 > sizeof(g_pcTmpBuf)) {
		printf("Resulting path name is too long\r\n");
		return (0);
	}

	//
	// Copy the current path to the temporary buffer so it can be manipulated.
	//
	strcpy(g_pcTmpBuf, g_pcCwdBuf);

	//
	// If not already at the root level, then append a separator.
	//
	if (strcmp("/", g_pcCwdBuf)) {
		strcat(g_pcTmpBuf, "/");
	}

	//
	// Now finally, append the file name to result in a fully specified file.
	//
	strcat(g_pcTmpBuf, argv[1]);

	//
	// Open the file for reading.
	//
	iFResult = f_open(&g_sFileObject, g_pcTmpBuf, FA_READ);

	//
	// If there was some problem opening the file, then return an error.
	//
	if (iFResult != FR_OK) {
		return ((int) iFResult);
	}

	printf("\r\n");

	//
	// Enter a loop to repeatedly read data from the file and display it, until
	// the end of the file is reached.
	//
	do {
		//
		// Read a block of data from the file.  Read as much as can fit in the
		// temporary buffer, including a space for the trailing null.
		//
		iFResult = f_read(&g_sFileObject, g_pcTmpBuf, sizeof(g_pcTmpBuf) - 1,
				(UINT *) &ui32BytesRead);

		//
		// If there was an error reading, then print a newline and return the
		// error to the user.
		//
		if (iFResult != FR_OK) {
			printf("\r\n");
			return ((int) iFResult);
		}

		//
		// Null terminate the last block that was read to make it a null
		// terminated string that can be used with printf.
		//
		g_pcTmpBuf[ui32BytesRead] = 0;

		//
		// Print the last chunk of the file that was received.
		//
		printf("%s", g_pcTmpBuf);
	} while (ui32BytesRead == sizeof(g_pcTmpBuf) - 1);

	printf("\r\n");
	//
	// Return success.
	//
	return (0);
}

