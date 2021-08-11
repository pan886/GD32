################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../nuclei_sdk/SoC/gd32vf103/Common/Source/gd32vf103_soc.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/system_gd32vf103.c 

OBJS += \
./nuclei_sdk/SoC/gd32vf103/Common/Source/gd32vf103_soc.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/system_gd32vf103.o 

C_DEPS += \
./nuclei_sdk/SoC/gd32vf103/Common/Source/gd32vf103_soc.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/system_gd32vf103.d 


# Each subdirectory must supply rules for building sources it contributes
nuclei_sdk/SoC/gd32vf103/Common/Source/%.o: ../nuclei_sdk/SoC/gd32vf103/Common/Source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DRTOS_FREERTOS -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\789\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\789\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\789\nuclei_sdk\OS\FreeRTOS\Source\include" -I"D:\risc_studio\789\nuclei_sdk\OS\FreeRTOS\Source\portable\GCC" -I"D:\risc_studio\789\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\789\application" -I"D:\risc_studio\789\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\789\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\789\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


