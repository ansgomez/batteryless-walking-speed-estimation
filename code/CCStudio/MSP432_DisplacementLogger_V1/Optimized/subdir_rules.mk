################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
camera.obj: ../camera.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --include_path="/Applications/ti/ccsv6/ccs_base/arm/include" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include/" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1" --include_path="/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/" --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="camera.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cypress_fram.obj: ../cypress_fram.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --include_path="/Applications/ti/ccsv6/ccs_base/arm/include" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include/" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1" --include_path="/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/" --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="cypress_fram.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

image_processing.obj: ../image_processing.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --include_path="/Applications/ti/ccsv6/ccs_base/arm/include" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include/" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1" --include_path="/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/" --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="image_processing.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --include_path="/Applications/ti/ccsv6/ccs_base/arm/include" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include/" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1" --include_path="/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/" --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sd_diskio.obj: ../sd_diskio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --include_path="/Applications/ti/ccsv6/ccs_base/arm/include" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include/" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1" --include_path="/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/" --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="sd_diskio.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

serial.obj: ../serial.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --include_path="/Applications/ti/ccsv6/ccs_base/arm/include" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include/" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1" --include_path="/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/" --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="serial.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup_msp432p401r_ccs.obj: ../startup_msp432p401r_ccs.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --include_path="/Applications/ti/ccsv6/ccs_base/arm/include" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include/" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1" --include_path="/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/" --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="startup_msp432p401r_ccs.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

system_msp432p401r.obj: ../system_msp432p401r.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --include_path="/Applications/ti/ccsv6/ccs_base/arm/include" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/" --include_path="/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include/" --include_path="/Applications/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1" --include_path="/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/" --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="system_msp432p401r.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


