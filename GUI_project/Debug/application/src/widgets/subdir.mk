################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/src/widgets/lv_arc.c \
../application/src/widgets/lv_bar.c \
../application/src/widgets/lv_btn.c \
../application/src/widgets/lv_btnmatrix.c \
../application/src/widgets/lv_canvas.c \
../application/src/widgets/lv_checkbox.c \
../application/src/widgets/lv_dropdown.c \
../application/src/widgets/lv_img.c \
../application/src/widgets/lv_label.c \
../application/src/widgets/lv_line.c \
../application/src/widgets/lv_objx_templ.c \
../application/src/widgets/lv_roller.c \
../application/src/widgets/lv_slider.c \
../application/src/widgets/lv_switch.c \
../application/src/widgets/lv_table.c \
../application/src/widgets/lv_textarea.c 

OBJS += \
./application/src/widgets/lv_arc.o \
./application/src/widgets/lv_bar.o \
./application/src/widgets/lv_btn.o \
./application/src/widgets/lv_btnmatrix.o \
./application/src/widgets/lv_canvas.o \
./application/src/widgets/lv_checkbox.o \
./application/src/widgets/lv_dropdown.o \
./application/src/widgets/lv_img.o \
./application/src/widgets/lv_label.o \
./application/src/widgets/lv_line.o \
./application/src/widgets/lv_objx_templ.o \
./application/src/widgets/lv_roller.o \
./application/src/widgets/lv_slider.o \
./application/src/widgets/lv_switch.o \
./application/src/widgets/lv_table.o \
./application/src/widgets/lv_textarea.o 

C_DEPS += \
./application/src/widgets/lv_arc.d \
./application/src/widgets/lv_bar.d \
./application/src/widgets/lv_btn.d \
./application/src/widgets/lv_btnmatrix.d \
./application/src/widgets/lv_canvas.d \
./application/src/widgets/lv_checkbox.d \
./application/src/widgets/lv_dropdown.d \
./application/src/widgets/lv_img.d \
./application/src/widgets/lv_label.d \
./application/src/widgets/lv_line.d \
./application/src/widgets/lv_objx_templ.d \
./application/src/widgets/lv_roller.d \
./application/src/widgets/lv_slider.d \
./application/src/widgets/lv_switch.d \
./application/src/widgets/lv_table.d \
./application/src/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
application/src/widgets/%.o: ../application/src/widgets/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O2 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


