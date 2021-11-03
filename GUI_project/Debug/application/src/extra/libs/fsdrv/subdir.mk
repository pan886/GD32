################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/src/extra/libs/fsdrv/lv_fs_fatfs.c \
../application/src/extra/libs/fsdrv/lv_fs_posix.c \
../application/src/extra/libs/fsdrv/lv_fs_stdio.c \
../application/src/extra/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./application/src/extra/libs/fsdrv/lv_fs_fatfs.o \
./application/src/extra/libs/fsdrv/lv_fs_posix.o \
./application/src/extra/libs/fsdrv/lv_fs_stdio.o \
./application/src/extra/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./application/src/extra/libs/fsdrv/lv_fs_fatfs.d \
./application/src/extra/libs/fsdrv/lv_fs_posix.d \
./application/src/extra/libs/fsdrv/lv_fs_stdio.d \
./application/src/extra/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
application/src/extra/libs/fsdrv/%.o: ../application/src/extra/libs/fsdrv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O2 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


