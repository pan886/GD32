################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/ucgui/ConvertColor/LCDP111.c \
../application/ucgui/ConvertColor/LCDP222.c \
../application/ucgui/ConvertColor/LCDP233.c \
../application/ucgui/ConvertColor/LCDP323.c \
../application/ucgui/ConvertColor/LCDP332.c \
../application/ucgui/ConvertColor/LCDP444_12.c \
../application/ucgui/ConvertColor/LCDP444_12_1.c \
../application/ucgui/ConvertColor/LCDP444_16.c \
../application/ucgui/ConvertColor/LCDP555.c \
../application/ucgui/ConvertColor/LCDP556.c \
../application/ucgui/ConvertColor/LCDP565.c \
../application/ucgui/ConvertColor/LCDP655.c \
../application/ucgui/ConvertColor/LCDP8666.c \
../application/ucgui/ConvertColor/LCDP8666_1.c \
../application/ucgui/ConvertColor/LCDPM233.c \
../application/ucgui/ConvertColor/LCDPM323.c \
../application/ucgui/ConvertColor/LCDPM332.c \
../application/ucgui/ConvertColor/LCDPM444_12.c \
../application/ucgui/ConvertColor/LCDPM444_16.c \
../application/ucgui/ConvertColor/LCDPM555.c \
../application/ucgui/ConvertColor/LCDPM556.c \
../application/ucgui/ConvertColor/LCDPM565.c \
../application/ucgui/ConvertColor/LCDPM655.c 

OBJS += \
./application/ucgui/ConvertColor/LCDP111.o \
./application/ucgui/ConvertColor/LCDP222.o \
./application/ucgui/ConvertColor/LCDP233.o \
./application/ucgui/ConvertColor/LCDP323.o \
./application/ucgui/ConvertColor/LCDP332.o \
./application/ucgui/ConvertColor/LCDP444_12.o \
./application/ucgui/ConvertColor/LCDP444_12_1.o \
./application/ucgui/ConvertColor/LCDP444_16.o \
./application/ucgui/ConvertColor/LCDP555.o \
./application/ucgui/ConvertColor/LCDP556.o \
./application/ucgui/ConvertColor/LCDP565.o \
./application/ucgui/ConvertColor/LCDP655.o \
./application/ucgui/ConvertColor/LCDP8666.o \
./application/ucgui/ConvertColor/LCDP8666_1.o \
./application/ucgui/ConvertColor/LCDPM233.o \
./application/ucgui/ConvertColor/LCDPM323.o \
./application/ucgui/ConvertColor/LCDPM332.o \
./application/ucgui/ConvertColor/LCDPM444_12.o \
./application/ucgui/ConvertColor/LCDPM444_16.o \
./application/ucgui/ConvertColor/LCDPM555.o \
./application/ucgui/ConvertColor/LCDPM556.o \
./application/ucgui/ConvertColor/LCDPM565.o \
./application/ucgui/ConvertColor/LCDPM655.o 

C_DEPS += \
./application/ucgui/ConvertColor/LCDP111.d \
./application/ucgui/ConvertColor/LCDP222.d \
./application/ucgui/ConvertColor/LCDP233.d \
./application/ucgui/ConvertColor/LCDP323.d \
./application/ucgui/ConvertColor/LCDP332.d \
./application/ucgui/ConvertColor/LCDP444_12.d \
./application/ucgui/ConvertColor/LCDP444_12_1.d \
./application/ucgui/ConvertColor/LCDP444_16.d \
./application/ucgui/ConvertColor/LCDP555.d \
./application/ucgui/ConvertColor/LCDP556.d \
./application/ucgui/ConvertColor/LCDP565.d \
./application/ucgui/ConvertColor/LCDP655.d \
./application/ucgui/ConvertColor/LCDP8666.d \
./application/ucgui/ConvertColor/LCDP8666_1.d \
./application/ucgui/ConvertColor/LCDPM233.d \
./application/ucgui/ConvertColor/LCDPM323.d \
./application/ucgui/ConvertColor/LCDPM332.d \
./application/ucgui/ConvertColor/LCDPM444_12.d \
./application/ucgui/ConvertColor/LCDPM444_16.d \
./application/ucgui/ConvertColor/LCDPM555.d \
./application/ucgui/ConvertColor/LCDPM556.d \
./application/ucgui/ConvertColor/LCDPM565.d \
./application/ucgui/ConvertColor/LCDPM655.d 


# Each subdirectory must supply rules for building sources it contributes
application/ucgui/ConvertColor/%.o: ../application/ucgui/ConvertColor/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\ucgui" -I"D:\risc_studio\456\application\ucgui\WM" -I"D:\risc_studio\456\application\ucgui\ConvertColor" -I"D:\risc_studio\456\application\ucgui\ConvertMono" -I"D:\risc_studio\456\application\ucgui\Core" -I"D:\risc_studio\456\application\ucgui\Font" -I"D:\risc_studio\456\application\ucgui\JPEG" -I"D:\risc_studio\456\application\ucgui\LCDDriver" -I"D:\risc_studio\456\application\ucgui\MemDev" -I"D:\risc_studio\456\application\ucgui\MultiLayer" -I"D:\risc_studio\456\application\ucgui\Widget" -I"D:\risc_studio\456\application\gui_config" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


