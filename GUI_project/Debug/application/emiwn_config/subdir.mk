################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/emiwn_config/GUIConf.c \
../application/emiwn_config/GUIDRV_Template.c \
../application/emiwn_config/LCDConf_Lin_Template.c \
../application/emiwn_config/SIMConf.c 

OBJS += \
./application/emiwn_config/GUIConf.o \
./application/emiwn_config/GUIDRV_Template.o \
./application/emiwn_config/LCDConf_Lin_Template.o \
./application/emiwn_config/SIMConf.o 

C_DEPS += \
./application/emiwn_config/GUIConf.d \
./application/emiwn_config/GUIDRV_Template.d \
./application/emiwn_config/LCDConf_Lin_Template.d \
./application/emiwn_config/SIMConf.d 


# Each subdirectory must supply rules for building sources it contributes
application/emiwn_config/%.o: ../application/emiwn_config/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\application\inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


