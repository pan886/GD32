################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/exmc_lcd.c \
../application/exmc_sram.c \
../application/gui_28.c \
../application/i2c.c \
../application/ili9320.c \
../application/lcd_28.c \
../application/main.c \
../application/mpu.c \
../application/picture.c \
../application/touch.c 

OBJS += \
./application/exmc_lcd.o \
./application/exmc_sram.o \
./application/gui_28.o \
./application/i2c.o \
./application/ili9320.o \
./application/lcd_28.o \
./application/main.o \
./application/mpu.o \
./application/picture.o \
./application/touch.o 

C_DEPS += \
./application/exmc_lcd.d \
./application/exmc_sram.d \
./application/gui_28.d \
./application/i2c.d \
./application/ili9320.d \
./application/lcd_28.d \
./application/main.d \
./application/mpu.d \
./application/picture.d \
./application/touch.d 


# Each subdirectory must supply rules for building sources it contributes
application/%.o: ../application/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -I"D:\risc_studio\456\application\GUI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


