################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include nuclei_sdk/SoC/gd32vf103/Common/Source/Stubs/subdir.mk
-include nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/subdir.mk
-include nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/subdir.mk
-include nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/subdir.mk
-include nuclei_sdk/SoC/gd32vf103/Common/Source/subdir.mk
-include nuclei_sdk/SoC/gd32vf103/Common/Include/subdir.mk
-include nuclei_sdk/SoC/gd32vf103/Board/gd32vf103v_rvstar/Source/subdir.mk
-include nuclei_sdk/OS/FreeRTOS/Source/portable/MemMang/subdir.mk
-include nuclei_sdk/OS/FreeRTOS/Source/portable/GCC/subdir.mk
-include nuclei_sdk/OS/FreeRTOS/Source/subdir.mk
-include application/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
789.hex \

SECONDARY_SIZE += \
789.siz \


# All Target
all: 789.elf secondary-outputs

# Tool invocations
789.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU RISC-V Cross C++ Linker'
	riscv-nuclei-elf-g++ -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -T "D:\risc_studio\789\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Source\GCC\gcc_gd32vf103_flashxip.ld" -nostartfiles -Xlinker --gc-sections -L"D:\risc_studio\789\nuclei_sdk\NMSIS\Library\DSP\GCC" -L"D:\risc_studio\789\nuclei_sdk\NMSIS\Library\NN\GCC" -Wl,-Map,"789.map" --specs=nano.specs -u _printf_float --specs=nosys.specs -u _isatty -u _write -u _sbrk -u _read -u _close -u _fstat -u _lseek -o "789.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

789.hex: 789.elf
	@echo 'Invoking: GNU RISC-V Cross Create Flash Image'
	riscv-nuclei-elf-objcopy -O ihex "789.elf"  "789.hex"
	@echo 'Finished building: $@'
	@echo ' '

789.siz: 789.elf
	@echo 'Invoking: GNU RISC-V Cross Print Size'
	riscv-nuclei-elf-size --format=berkeley "789.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) 789.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
