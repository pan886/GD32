################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/src/gpu/sdl/lv_gpu_sdl_draw_arc.c \
../application/src/gpu/sdl/lv_gpu_sdl_draw_blend.c \
../application/src/gpu/sdl/lv_gpu_sdl_draw_img.c \
../application/src/gpu/sdl/lv_gpu_sdl_draw_label.c \
../application/src/gpu/sdl/lv_gpu_sdl_draw_line.c \
../application/src/gpu/sdl/lv_gpu_sdl_draw_rect.c \
../application/src/gpu/sdl/lv_gpu_sdl_lru.c \
../application/src/gpu/sdl/lv_gpu_sdl_mask.c \
../application/src/gpu/sdl/lv_gpu_sdl_stack_blur.c \
../application/src/gpu/sdl/lv_gpu_sdl_texture_cache.c \
../application/src/gpu/sdl/lv_gpu_sdl_utils.c 

OBJS += \
./application/src/gpu/sdl/lv_gpu_sdl_draw_arc.o \
./application/src/gpu/sdl/lv_gpu_sdl_draw_blend.o \
./application/src/gpu/sdl/lv_gpu_sdl_draw_img.o \
./application/src/gpu/sdl/lv_gpu_sdl_draw_label.o \
./application/src/gpu/sdl/lv_gpu_sdl_draw_line.o \
./application/src/gpu/sdl/lv_gpu_sdl_draw_rect.o \
./application/src/gpu/sdl/lv_gpu_sdl_lru.o \
./application/src/gpu/sdl/lv_gpu_sdl_mask.o \
./application/src/gpu/sdl/lv_gpu_sdl_stack_blur.o \
./application/src/gpu/sdl/lv_gpu_sdl_texture_cache.o \
./application/src/gpu/sdl/lv_gpu_sdl_utils.o 

C_DEPS += \
./application/src/gpu/sdl/lv_gpu_sdl_draw_arc.d \
./application/src/gpu/sdl/lv_gpu_sdl_draw_blend.d \
./application/src/gpu/sdl/lv_gpu_sdl_draw_img.d \
./application/src/gpu/sdl/lv_gpu_sdl_draw_label.d \
./application/src/gpu/sdl/lv_gpu_sdl_draw_line.d \
./application/src/gpu/sdl/lv_gpu_sdl_draw_rect.d \
./application/src/gpu/sdl/lv_gpu_sdl_lru.d \
./application/src/gpu/sdl/lv_gpu_sdl_mask.d \
./application/src/gpu/sdl/lv_gpu_sdl_stack_blur.d \
./application/src/gpu/sdl/lv_gpu_sdl_texture_cache.d \
./application/src/gpu/sdl/lv_gpu_sdl_utils.d 


# Each subdirectory must supply rules for building sources it contributes
application/src/gpu/sdl/%.o: ../application/src/gpu/sdl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


