################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/src/core/lv_disp.c \
../application/src/core/lv_event.c \
../application/src/core/lv_group.c \
../application/src/core/lv_indev.c \
../application/src/core/lv_indev_scroll.c \
../application/src/core/lv_obj.c \
../application/src/core/lv_obj_class.c \
../application/src/core/lv_obj_draw.c \
../application/src/core/lv_obj_pos.c \
../application/src/core/lv_obj_scroll.c \
../application/src/core/lv_obj_style.c \
../application/src/core/lv_obj_style_gen.c \
../application/src/core/lv_obj_tree.c \
../application/src/core/lv_refr.c \
../application/src/core/lv_theme.c 

OBJS += \
./application/src/core/lv_disp.o \
./application/src/core/lv_event.o \
./application/src/core/lv_group.o \
./application/src/core/lv_indev.o \
./application/src/core/lv_indev_scroll.o \
./application/src/core/lv_obj.o \
./application/src/core/lv_obj_class.o \
./application/src/core/lv_obj_draw.o \
./application/src/core/lv_obj_pos.o \
./application/src/core/lv_obj_scroll.o \
./application/src/core/lv_obj_style.o \
./application/src/core/lv_obj_style_gen.o \
./application/src/core/lv_obj_tree.o \
./application/src/core/lv_refr.o \
./application/src/core/lv_theme.o 

C_DEPS += \
./application/src/core/lv_disp.d \
./application/src/core/lv_event.d \
./application/src/core/lv_group.d \
./application/src/core/lv_indev.d \
./application/src/core/lv_indev_scroll.d \
./application/src/core/lv_obj.d \
./application/src/core/lv_obj_class.d \
./application/src/core/lv_obj_draw.d \
./application/src/core/lv_obj_pos.d \
./application/src/core/lv_obj_scroll.d \
./application/src/core/lv_obj_style.d \
./application/src/core/lv_obj_style_gen.d \
./application/src/core/lv_obj_tree.d \
./application/src/core/lv_refr.d \
./application/src/core/lv_theme.d 


# Each subdirectory must supply rules for building sources it contributes
application/src/core/%.o: ../application/src/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O2 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


