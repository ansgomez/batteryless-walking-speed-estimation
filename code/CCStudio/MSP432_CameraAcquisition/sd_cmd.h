/*
 * sd_cmd.h
 *
 *  Created on: 14.03.2016
 *      Author: thomas
 */

#ifndef SD_CMD_H_
#define SD_CMD_H_

/* DriverLib Includes */
#include "driverlib.h"

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "utils/cmdline.h"
#include "utils/ff.h"
#include "utils/diskio.h"

// Defines the size of the buffers that hold the path, or temporary data from
// the SD card.  There are two buffers allocated of this size.  The buffer size
// must be large enough to hold the longest expected full path name, including
// the file name, and a trailing null character.
#define PATH_BUF_SIZE           80

// Defines the size of the buffer that holds the command line.
#define CMD_BUF_SIZE            64

// This buffer holds the full path to the current working directory.  Initially
// it is root ("/").
static char g_pcCwdBuf[PATH_BUF_SIZE] = "/";

// A temporary data buffer used when manipulating file paths, or reading data
// from the SD card.
static char g_pcTmpBuf[PATH_BUF_SIZE];

// The buffer that holds the command line.
static char g_pcCmdBuf[CMD_BUF_SIZE];

// The following are data structures used by FatFs.
static FATFS g_sFatFs;
static DIR g_sDirObject;
static FILINFO g_sFileInfo;
static FIL g_sFileObject;

// Command declaration.
int Cmd_help(int argc, char *argv[]);
int Cmd_ls(int argc, char *argv[]);
int Cmd_pwd(int argc, char *argv[]);
int Cmd_cd(int argc, char *argv[]);
int Cmd_cat(int argc, char *argv[]);

// This function returns a string representation of an error code that was
// returned from a function call to FatFs.  It can be used for printing human
// readable error messages.
const char * StringFromFResult(FRESULT iFResult);

#endif /* SD_CMD_H_ */
