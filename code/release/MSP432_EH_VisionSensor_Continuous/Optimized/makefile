################################################################################
# Automatically-generated file. Do not edit!
################################################################################

CG_TOOL_ROOT := /Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./camera.obj" \
"./clock.obj" \
"./cypress_fram.obj" \
"./emu.obj" \
"./gpio.obj" \
"./image_processing.obj" \
"./main.obj" \
"./sd_diskio.obj" \
"./serial.obj" \
"./startup_msp432p401r_ccs.obj" \
"./state_retention.obj" \
"./system_msp432p401r.obj" \
"./utils/ff.obj" \
"./tasks/task_camera.obj" \
"./tasks/task_fpn.obj" \
"./tasks/task_process.obj" \
"./tasks/task_sdcard_flush.obj" \
"./tasks/task_sdcard_flush_FAT.obj" \
"./tasks/task_sdcard_write.obj" \
"./tasks/task_sdcard_write_FAT.obj" \
"./tasks/task_serial_flush.obj" \
"./tasks/task_serial_send.obj" \
"../driverlib_empty_project_ccs.cmd" \
"/Applications/ti/msp/MSPWare_3_20_00_37/driverlib/driverlib/MSP432P4xx/ccs/msp432p4xx_driverlib.lib" \
$(GEN_CMDS__FLAG) \
-l"libc.a" \

-include ../makefile.init

RM := rm -rf
RMDIR := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include utils/subdir_vars.mk
-include tasks/subdir_vars.mk
-include subdir_rules.mk
-include utils/subdir_rules.mk
-include tasks/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
MSP432_EH_VisionSensor_Continuous.out \

EXE_OUTPUTS__QUOTED += \
"MSP432_EH_VisionSensor_Continuous.out" \

BIN_OUTPUTS += \
MSP432_EH_VisionSensor_Continuous.bin \

BIN_OUTPUTS__QUOTED += \
"MSP432_EH_VisionSensor_Continuous.bin" \


# All Target
all: MSP432_EH_VisionSensor_Continuous.out

# Tool invocations
MSP432_EH_VisionSensor_Continuous.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: MSP432 Linker'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O4 --opt_for_speed=5 --advice:power="all" -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --display_error_number --diag_warning=225 --diag_wrap=off -z -m"MSP432_EH_VisionSensor_Continuous.map" --stack_size=512 -i"/Applications/ti/ccsv6/ccs_base/arm/include" -i"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/lib" -i"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --reread_libs --warn_sections --display_error_number --diag_wrap=off --xml_link_info="MSP432_EH_VisionSensor_Continuous_linkInfo.xml" --rom_model -o "MSP432_EH_VisionSensor_Continuous.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

MSP432_EH_VisionSensor_Continuous.bin: $(EXE_OUTPUTS)
	@echo 'Invoking: MSP432 Hex Utility'
	"/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armhex"  -o "MSP432_EH_VisionSensor_Continuous.bin" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(BIN_OUTPUTS__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "camera.obj" "clock.obj" "cypress_fram.obj" "emu.obj" "gpio.obj" "image_processing.obj" "main.obj" "sd_diskio.obj" "serial.obj" "startup_msp432p401r_ccs.obj" "state_retention.obj" "system_msp432p401r.obj" "utils/ff.obj" "tasks/task_camera.obj" "tasks/task_fpn.obj" "tasks/task_process.obj" "tasks/task_sdcard_flush.obj" "tasks/task_sdcard_flush_FAT.obj" "tasks/task_sdcard_write.obj" "tasks/task_sdcard_write_FAT.obj" "tasks/task_serial_flush.obj" "tasks/task_serial_send.obj" 
	-$(RM) "camera.pp" "clock.pp" "cypress_fram.pp" "emu.pp" "gpio.pp" "image_processing.pp" "main.pp" "sd_diskio.pp" "serial.pp" "startup_msp432p401r_ccs.pp" "state_retention.pp" "system_msp432p401r.pp" "utils/ff.pp" "tasks/task_camera.pp" "tasks/task_fpn.pp" "tasks/task_process.pp" "tasks/task_sdcard_flush.pp" "tasks/task_sdcard_flush_FAT.pp" "tasks/task_sdcard_write.pp" "tasks/task_sdcard_write_FAT.pp" "tasks/task_serial_flush.pp" "tasks/task_serial_send.pp" 
	-@echo 'Finished clean'
	-@echo ' '

post-build:
	-/Applications/ti/ccsv6/utils/tiobj2bin/tiobj2bin MSP432_EH_VisionSensor_Continuous.out MSP432_EH_VisionSensor_Continuous.bin /Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armofd /Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armhex /Applications/ti/ccsv6/utils/tiobj2bin/mkhex4bin
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets

