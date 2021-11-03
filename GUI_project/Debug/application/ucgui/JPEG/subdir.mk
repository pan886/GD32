################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/ucgui/JPEG/GUI_JPEG.c \
../application/ucgui/JPEG/jcomapi.c \
../application/ucgui/JPEG/jdapimin.c \
../application/ucgui/JPEG/jdapistd.c \
../application/ucgui/JPEG/jdcoefct.c \
../application/ucgui/JPEG/jdcolor.c \
../application/ucgui/JPEG/jddctmgr.c \
../application/ucgui/JPEG/jdhuff.c \
../application/ucgui/JPEG/jdinput.c \
../application/ucgui/JPEG/jdmainct.c \
../application/ucgui/JPEG/jdmarker.c \
../application/ucgui/JPEG/jdmaster.c \
../application/ucgui/JPEG/jdmerge.c \
../application/ucgui/JPEG/jdphuff.c \
../application/ucgui/JPEG/jdpostct.c \
../application/ucgui/JPEG/jdsample.c \
../application/ucgui/JPEG/jdtrans.c \
../application/ucgui/JPEG/jerror.c \
../application/ucgui/JPEG/jfdctflt.c \
../application/ucgui/JPEG/jfdctfst.c \
../application/ucgui/JPEG/jfdctint.c \
../application/ucgui/JPEG/jidctflt.c \
../application/ucgui/JPEG/jidctfst.c \
../application/ucgui/JPEG/jidctint.c \
../application/ucgui/JPEG/jidctred.c \
../application/ucgui/JPEG/jmemmgr.c \
../application/ucgui/JPEG/jquant1.c \
../application/ucgui/JPEG/jquant2.c \
../application/ucgui/JPEG/jutils.c 

OBJS += \
./application/ucgui/JPEG/GUI_JPEG.o \
./application/ucgui/JPEG/jcomapi.o \
./application/ucgui/JPEG/jdapimin.o \
./application/ucgui/JPEG/jdapistd.o \
./application/ucgui/JPEG/jdcoefct.o \
./application/ucgui/JPEG/jdcolor.o \
./application/ucgui/JPEG/jddctmgr.o \
./application/ucgui/JPEG/jdhuff.o \
./application/ucgui/JPEG/jdinput.o \
./application/ucgui/JPEG/jdmainct.o \
./application/ucgui/JPEG/jdmarker.o \
./application/ucgui/JPEG/jdmaster.o \
./application/ucgui/JPEG/jdmerge.o \
./application/ucgui/JPEG/jdphuff.o \
./application/ucgui/JPEG/jdpostct.o \
./application/ucgui/JPEG/jdsample.o \
./application/ucgui/JPEG/jdtrans.o \
./application/ucgui/JPEG/jerror.o \
./application/ucgui/JPEG/jfdctflt.o \
./application/ucgui/JPEG/jfdctfst.o \
./application/ucgui/JPEG/jfdctint.o \
./application/ucgui/JPEG/jidctflt.o \
./application/ucgui/JPEG/jidctfst.o \
./application/ucgui/JPEG/jidctint.o \
./application/ucgui/JPEG/jidctred.o \
./application/ucgui/JPEG/jmemmgr.o \
./application/ucgui/JPEG/jquant1.o \
./application/ucgui/JPEG/jquant2.o \
./application/ucgui/JPEG/jutils.o 

C_DEPS += \
./application/ucgui/JPEG/GUI_JPEG.d \
./application/ucgui/JPEG/jcomapi.d \
./application/ucgui/JPEG/jdapimin.d \
./application/ucgui/JPEG/jdapistd.d \
./application/ucgui/JPEG/jdcoefct.d \
./application/ucgui/JPEG/jdcolor.d \
./application/ucgui/JPEG/jddctmgr.d \
./application/ucgui/JPEG/jdhuff.d \
./application/ucgui/JPEG/jdinput.d \
./application/ucgui/JPEG/jdmainct.d \
./application/ucgui/JPEG/jdmarker.d \
./application/ucgui/JPEG/jdmaster.d \
./application/ucgui/JPEG/jdmerge.d \
./application/ucgui/JPEG/jdphuff.d \
./application/ucgui/JPEG/jdpostct.d \
./application/ucgui/JPEG/jdsample.d \
./application/ucgui/JPEG/jdtrans.d \
./application/ucgui/JPEG/jerror.d \
./application/ucgui/JPEG/jfdctflt.d \
./application/ucgui/JPEG/jfdctfst.d \
./application/ucgui/JPEG/jfdctint.d \
./application/ucgui/JPEG/jidctflt.d \
./application/ucgui/JPEG/jidctfst.d \
./application/ucgui/JPEG/jidctint.d \
./application/ucgui/JPEG/jidctred.d \
./application/ucgui/JPEG/jmemmgr.d \
./application/ucgui/JPEG/jquant1.d \
./application/ucgui/JPEG/jquant2.d \
./application/ucgui/JPEG/jutils.d 


# Each subdirectory must supply rules for building sources it contributes
application/ucgui/JPEG/%.o: ../application/ucgui/JPEG/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\ucgui" -I"D:\risc_studio\456\application\ucgui\WM" -I"D:\risc_studio\456\application\ucgui\ConvertColor" -I"D:\risc_studio\456\application\ucgui\ConvertMono" -I"D:\risc_studio\456\application\ucgui\Core" -I"D:\risc_studio\456\application\ucgui\Font" -I"D:\risc_studio\456\application\ucgui\JPEG" -I"D:\risc_studio\456\application\ucgui\LCDDriver" -I"D:\risc_studio\456\application\ucgui\MemDev" -I"D:\risc_studio\456\application\ucgui\MultiLayer" -I"D:\risc_studio\456\application\ucgui\Widget" -I"D:\risc_studio\456\application\gui_config" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


