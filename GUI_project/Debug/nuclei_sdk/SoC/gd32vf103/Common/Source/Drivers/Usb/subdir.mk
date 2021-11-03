################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_core.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_dev.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_host.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usbd_int.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usbh_int.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/gd32vf103_usb_hw.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_core.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_enum.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_transc.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_core.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_enum.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_pipe.c \
../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_transc.c 

OBJS += \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_core.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_dev.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_host.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usbd_int.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usbh_int.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/gd32vf103_usb_hw.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_core.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_enum.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_transc.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_core.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_enum.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_pipe.o \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_transc.o 

C_DEPS += \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_core.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_dev.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usb_host.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usbd_int.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/drv_usbh_int.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/gd32vf103_usb_hw.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_core.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_enum.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbd_transc.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_core.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_enum.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_pipe.d \
./nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/usbh_transc.d 


# Each subdirectory must supply rules for building sources it contributes
nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/%.o: ../nuclei_sdk/SoC/gd32vf103/Common/Source/Drivers/Usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\gui_config" -I"D:\risc_studio\456\application\src" -I"D:\risc_studio\456\application\src\hal" -I"D:\risc_studio\456\application\src\misc" -I"D:\risc_studio\456\application\src\widgets" -I"D:\risc_studio\456\application\GUI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


