################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/ucgui/AntiAlias/GUIAAArc.c \
../application/ucgui/AntiAlias/GUIAAChar.c \
../application/ucgui/AntiAlias/GUIAAChar2.c \
../application/ucgui/AntiAlias/GUIAAChar4.c \
../application/ucgui/AntiAlias/GUIAACircle.c \
../application/ucgui/AntiAlias/GUIAALib.c \
../application/ucgui/AntiAlias/GUIAALine.c \
../application/ucgui/AntiAlias/GUIAAPoly.c \
../application/ucgui/AntiAlias/GUIAAPolyOut.c 

OBJS += \
./application/ucgui/AntiAlias/GUIAAArc.o \
./application/ucgui/AntiAlias/GUIAAChar.o \
./application/ucgui/AntiAlias/GUIAAChar2.o \
./application/ucgui/AntiAlias/GUIAAChar4.o \
./application/ucgui/AntiAlias/GUIAACircle.o \
./application/ucgui/AntiAlias/GUIAALib.o \
./application/ucgui/AntiAlias/GUIAALine.o \
./application/ucgui/AntiAlias/GUIAAPoly.o \
./application/ucgui/AntiAlias/GUIAAPolyOut.o 

C_DEPS += \
./application/ucgui/AntiAlias/GUIAAArc.d \
./application/ucgui/AntiAlias/GUIAAChar.d \
./application/ucgui/AntiAlias/GUIAAChar2.d \
./application/ucgui/AntiAlias/GUIAAChar4.d \
./application/ucgui/AntiAlias/GUIAACircle.d \
./application/ucgui/AntiAlias/GUIAALib.d \
./application/ucgui/AntiAlias/GUIAALine.d \
./application/ucgui/AntiAlias/GUIAAPoly.d \
./application/ucgui/AntiAlias/GUIAAPolyOut.d 


# Each subdirectory must supply rules for building sources it contributes
application/ucgui/AntiAlias/%.o: ../application/ucgui/AntiAlias/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\ucgui" -I"D:\risc_studio\456\application\ucgui\WM" -I"D:\risc_studio\456\application\ucgui\ConvertColor" -I"D:\risc_studio\456\application\ucgui\ConvertMono" -I"D:\risc_studio\456\application\ucgui\Core" -I"D:\risc_studio\456\application\ucgui\Font" -I"D:\risc_studio\456\application\ucgui\JPEG" -I"D:\risc_studio\456\application\ucgui\LCDDriver" -I"D:\risc_studio\456\application\ucgui\MemDev" -I"D:\risc_studio\456\application\ucgui\MultiLayer" -I"D:\risc_studio\456\application\ucgui\Widget" -I"D:\risc_studio\456\application\gui_config" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


