################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/intexc_gd32vf103.S \
../nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/startup_gd32vf103.S 

OBJS += \
./nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/intexc_gd32vf103.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/startup_gd32vf103.o 

S_UPPER_DEPS += \
./nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/intexc_gd32vf103.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/startup_gd32vf103.d 


# Each subdirectory must supply rules for building sources it contributes
nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/%.o: ../nuclei_sdk/SoC/gd32vf103/Common/Source/GCC/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross Assembler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -x assembler-with-cpp -DRTOS_FREERTOS -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\789\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\789\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\789\nuclei_sdk\OS\FreeRTOS\Source\include" -I"D:\risc_studio\789\nuclei_sdk\OS\FreeRTOS\Source\portable\GCC" -I"D:\risc_studio\789\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\789\application" -I"D:\risc_studio\789\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\789\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\789\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


