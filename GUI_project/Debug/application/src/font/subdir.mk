################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/src/font/lv_font.c \
../application/src/font/lv_font_dejavu_16_persian_hebrew.c \
../application/src/font/lv_font_fmt_txt.c \
../application/src/font/lv_font_loader.c \
../application/src/font/lv_font_montserrat_10.c \
../application/src/font/lv_font_montserrat_12.c \
../application/src/font/lv_font_montserrat_12_subpx.c \
../application/src/font/lv_font_montserrat_14.c \
../application/src/font/lv_font_montserrat_16.c \
../application/src/font/lv_font_montserrat_18.c \
../application/src/font/lv_font_montserrat_20.c \
../application/src/font/lv_font_montserrat_22.c \
../application/src/font/lv_font_montserrat_24.c \
../application/src/font/lv_font_montserrat_26.c \
../application/src/font/lv_font_montserrat_28.c \
../application/src/font/lv_font_montserrat_28_compressed.c \
../application/src/font/lv_font_montserrat_30.c \
../application/src/font/lv_font_montserrat_32.c \
../application/src/font/lv_font_montserrat_34.c \
../application/src/font/lv_font_montserrat_36.c \
../application/src/font/lv_font_montserrat_38.c \
../application/src/font/lv_font_montserrat_40.c \
../application/src/font/lv_font_montserrat_42.c \
../application/src/font/lv_font_montserrat_44.c \
../application/src/font/lv_font_montserrat_46.c \
../application/src/font/lv_font_montserrat_48.c \
../application/src/font/lv_font_montserrat_8.c \
../application/src/font/lv_font_simsun_16_cjk.c \
../application/src/font/lv_font_unscii_16.c \
../application/src/font/lv_font_unscii_8.c 

OBJS += \
./application/src/font/lv_font.o \
./application/src/font/lv_font_dejavu_16_persian_hebrew.o \
./application/src/font/lv_font_fmt_txt.o \
./application/src/font/lv_font_loader.o \
./application/src/font/lv_font_montserrat_10.o \
./application/src/font/lv_font_montserrat_12.o \
./application/src/font/lv_font_montserrat_12_subpx.o \
./application/src/font/lv_font_montserrat_14.o \
./application/src/font/lv_font_montserrat_16.o \
./application/src/font/lv_font_montserrat_18.o \
./application/src/font/lv_font_montserrat_20.o \
./application/src/font/lv_font_montserrat_22.o \
./application/src/font/lv_font_montserrat_24.o \
./application/src/font/lv_font_montserrat_26.o \
./application/src/font/lv_font_montserrat_28.o \
./application/src/font/lv_font_montserrat_28_compressed.o \
./application/src/font/lv_font_montserrat_30.o \
./application/src/font/lv_font_montserrat_32.o \
./application/src/font/lv_font_montserrat_34.o \
./application/src/font/lv_font_montserrat_36.o \
./application/src/font/lv_font_montserrat_38.o \
./application/src/font/lv_font_montserrat_40.o \
./application/src/font/lv_font_montserrat_42.o \
./application/src/font/lv_font_montserrat_44.o \
./application/src/font/lv_font_montserrat_46.o \
./application/src/font/lv_font_montserrat_48.o \
./application/src/font/lv_font_montserrat_8.o \
./application/src/font/lv_font_simsun_16_cjk.o \
./application/src/font/lv_font_unscii_16.o \
./application/src/font/lv_font_unscii_8.o 

C_DEPS += \
./application/src/font/lv_font.d \
./application/src/font/lv_font_dejavu_16_persian_hebrew.d \
./application/src/font/lv_font_fmt_txt.d \
./application/src/font/lv_font_loader.d \
./application/src/font/lv_font_montserrat_10.d \
./application/src/font/lv_font_montserrat_12.d \
./application/src/font/lv_font_montserrat_12_subpx.d \
./application/src/font/lv_font_montserrat_14.d \
./application/src/font/lv_font_montserrat_16.d \
./application/src/font/lv_font_montserrat_18.d \
./application/src/font/lv_font_montserrat_20.d \
./application/src/font/lv_font_montserrat_22.d \
./application/src/font/lv_font_montserrat_24.d \
./application/src/font/lv_font_montserrat_26.d \
./application/src/font/lv_font_montserrat_28.d \
./application/src/font/lv_font_montserrat_28_compressed.d \
./application/src/font/lv_font_montserrat_30.d \
./application/src/font/lv_font_montserrat_32.d \
./application/src/font/lv_font_montserrat_34.d \
./application/src/font/lv_font_montserrat_36.d \
./application/src/font/lv_font_montserrat_38.d \
./application/src/font/lv_font_montserrat_40.d \
./application/src/font/lv_font_montserrat_42.d \
./application/src/font/lv_font_montserrat_44.d \
./application/src/font/lv_font_montserrat_46.d \
./application/src/font/lv_font_montserrat_48.d \
./application/src/font/lv_font_montserrat_8.d \
./application/src/font/lv_font_simsun_16_cjk.d \
./application/src/font/lv_font_unscii_16.d \
./application/src/font/lv_font_unscii_8.d 


# Each subdirectory must supply rules for building sources it contributes
application/src/font/%.o: ../application/src/font/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O2 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


