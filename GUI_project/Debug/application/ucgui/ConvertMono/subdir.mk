################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/ucgui/ConvertMono/LCDP0.c \
../application/ucgui/ConvertMono/LCDP2.c \
../application/ucgui/ConvertMono/LCDP4.c 

OBJS += \
./application/ucgui/ConvertMono/LCDP0.o \
./application/ucgui/ConvertMono/LCDP2.o \
./application/ucgui/ConvertMono/LCDP4.o 

C_DEPS += \
./application/ucgui/ConvertMono/LCDP0.d \
./application/ucgui/ConvertMono/LCDP2.d \
./application/ucgui/ConvertMono/LCDP4.d 


# Each subdirectory must supply rules for building sources it contributes
application/ucgui/ConvertMono/%.o: ../application/ucgui/ConvertMono/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\ucgui" -I"D:\risc_studio\456\application\ucgui\WM" -I"D:\risc_studio\456\application\ucgui\ConvertColor" -I"D:\risc_studio\456\application\ucgui\ConvertMono" -I"D:\risc_studio\456\application\ucgui\Core" -I"D:\risc_studio\456\application\ucgui\Font" -I"D:\risc_studio\456\application\ucgui\JPEG" -I"D:\risc_studio\456\application\ucgui\LCDDriver" -I"D:\risc_studio\456\application\ucgui\MemDev" -I"D:\risc_studio\456\application\ucgui\MultiLayer" -I"D:\risc_studio\456\application\ucgui\Widget" -I"D:\risc_studio\456\application\gui_config" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


