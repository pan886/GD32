################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/src/draw/lv_draw_arc.c \
../application/src/draw/lv_draw_blend.c \
../application/src/draw/lv_draw_img.c \
../application/src/draw/lv_draw_label.c \
../application/src/draw/lv_draw_line.c \
../application/src/draw/lv_draw_mask.c \
../application/src/draw/lv_draw_rect.c \
../application/src/draw/lv_draw_triangle.c \
../application/src/draw/lv_img_buf.c \
../application/src/draw/lv_img_cache.c \
../application/src/draw/lv_img_decoder.c 

OBJS += \
./application/src/draw/lv_draw_arc.o \
./application/src/draw/lv_draw_blend.o \
./application/src/draw/lv_draw_img.o \
./application/src/draw/lv_draw_label.o \
./application/src/draw/lv_draw_line.o \
./application/src/draw/lv_draw_mask.o \
./application/src/draw/lv_draw_rect.o \
./application/src/draw/lv_draw_triangle.o \
./application/src/draw/lv_img_buf.o \
./application/src/draw/lv_img_cache.o \
./application/src/draw/lv_img_decoder.o 

C_DEPS += \
./application/src/draw/lv_draw_arc.d \
./application/src/draw/lv_draw_blend.d \
./application/src/draw/lv_draw_img.d \
./application/src/draw/lv_draw_label.d \
./application/src/draw/lv_draw_line.d \
./application/src/draw/lv_draw_mask.d \
./application/src/draw/lv_draw_rect.d \
./application/src/draw/lv_draw_triangle.d \
./application/src/draw/lv_img_buf.d \
./application/src/draw/lv_img_cache.d \
./application/src/draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
application/src/draw/%.o: ../application/src/draw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O2 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


