################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/src/misc/lv_anim.c \
../application/src/misc/lv_anim_timeline.c \
../application/src/misc/lv_area.c \
../application/src/misc/lv_async.c \
../application/src/misc/lv_bidi.c \
../application/src/misc/lv_color.c \
../application/src/misc/lv_fs.c \
../application/src/misc/lv_gc.c \
../application/src/misc/lv_ll.c \
../application/src/misc/lv_log.c \
../application/src/misc/lv_math.c \
../application/src/misc/lv_mem.c \
../application/src/misc/lv_printf.c \
../application/src/misc/lv_style.c \
../application/src/misc/lv_style_gen.c \
../application/src/misc/lv_templ.c \
../application/src/misc/lv_timer.c \
../application/src/misc/lv_tlsf.c \
../application/src/misc/lv_txt.c \
../application/src/misc/lv_txt_ap.c \
../application/src/misc/lv_utils.c 

OBJS += \
./application/src/misc/lv_anim.o \
./application/src/misc/lv_anim_timeline.o \
./application/src/misc/lv_area.o \
./application/src/misc/lv_async.o \
./application/src/misc/lv_bidi.o \
./application/src/misc/lv_color.o \
./application/src/misc/lv_fs.o \
./application/src/misc/lv_gc.o \
./application/src/misc/lv_ll.o \
./application/src/misc/lv_log.o \
./application/src/misc/lv_math.o \
./application/src/misc/lv_mem.o \
./application/src/misc/lv_printf.o \
./application/src/misc/lv_style.o \
./application/src/misc/lv_style_gen.o \
./application/src/misc/lv_templ.o \
./application/src/misc/lv_timer.o \
./application/src/misc/lv_tlsf.o \
./application/src/misc/lv_txt.o \
./application/src/misc/lv_txt_ap.o \
./application/src/misc/lv_utils.o 

C_DEPS += \
./application/src/misc/lv_anim.d \
./application/src/misc/lv_anim_timeline.d \
./application/src/misc/lv_area.d \
./application/src/misc/lv_async.d \
./application/src/misc/lv_bidi.d \
./application/src/misc/lv_color.d \
./application/src/misc/lv_fs.d \
./application/src/misc/lv_gc.d \
./application/src/misc/lv_ll.d \
./application/src/misc/lv_log.d \
./application/src/misc/lv_math.d \
./application/src/misc/lv_mem.d \
./application/src/misc/lv_printf.d \
./application/src/misc/lv_style.d \
./application/src/misc/lv_style_gen.d \
./application/src/misc/lv_templ.d \
./application/src/misc/lv_timer.d \
./application/src/misc/lv_tlsf.d \
./application/src/misc/lv_txt.d \
./application/src/misc/lv_txt_ap.d \
./application/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
application/src/misc/%.o: ../application/src/misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O2 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


