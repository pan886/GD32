################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/ucgui/MemDev/GUIDEV.c \
../application/ucgui/MemDev/GUIDEV_1.c \
../application/ucgui/MemDev/GUIDEV_16.c \
../application/ucgui/MemDev/GUIDEV_8.c \
../application/ucgui/MemDev/GUIDEV_AA.c \
../application/ucgui/MemDev/GUIDEV_Auto.c \
../application/ucgui/MemDev/GUIDEV_Banding.c \
../application/ucgui/MemDev/GUIDEV_Clear.c \
../application/ucgui/MemDev/GUIDEV_CmpWithLCD.c \
../application/ucgui/MemDev/GUIDEV_CopyFromLCD.c \
../application/ucgui/MemDev/GUIDEV_CreateFixed.c \
../application/ucgui/MemDev/GUIDEV_GetDataPtr.c \
../application/ucgui/MemDev/GUIDEV_GetXSize.c \
../application/ucgui/MemDev/GUIDEV_GetYSize.c \
../application/ucgui/MemDev/GUIDEV_Measure.c \
../application/ucgui/MemDev/GUIDEV_ReduceYSize.c \
../application/ucgui/MemDev/GUIDEV_SetOrg.c \
../application/ucgui/MemDev/GUIDEV_Usage.c \
../application/ucgui/MemDev/GUIDEV_UsageBM.c \
../application/ucgui/MemDev/GUIDEV_Write.c \
../application/ucgui/MemDev/GUIDEV_WriteAlpha.c \
../application/ucgui/MemDev/GUIDEV_WriteEx.c \
../application/ucgui/MemDev/GUIDEV_XY2PTR.c 

OBJS += \
./application/ucgui/MemDev/GUIDEV.o \
./application/ucgui/MemDev/GUIDEV_1.o \
./application/ucgui/MemDev/GUIDEV_16.o \
./application/ucgui/MemDev/GUIDEV_8.o \
./application/ucgui/MemDev/GUIDEV_AA.o \
./application/ucgui/MemDev/GUIDEV_Auto.o \
./application/ucgui/MemDev/GUIDEV_Banding.o \
./application/ucgui/MemDev/GUIDEV_Clear.o \
./application/ucgui/MemDev/GUIDEV_CmpWithLCD.o \
./application/ucgui/MemDev/GUIDEV_CopyFromLCD.o \
./application/ucgui/MemDev/GUIDEV_CreateFixed.o \
./application/ucgui/MemDev/GUIDEV_GetDataPtr.o \
./application/ucgui/MemDev/GUIDEV_GetXSize.o \
./application/ucgui/MemDev/GUIDEV_GetYSize.o \
./application/ucgui/MemDev/GUIDEV_Measure.o \
./application/ucgui/MemDev/GUIDEV_ReduceYSize.o \
./application/ucgui/MemDev/GUIDEV_SetOrg.o \
./application/ucgui/MemDev/GUIDEV_Usage.o \
./application/ucgui/MemDev/GUIDEV_UsageBM.o \
./application/ucgui/MemDev/GUIDEV_Write.o \
./application/ucgui/MemDev/GUIDEV_WriteAlpha.o \
./application/ucgui/MemDev/GUIDEV_WriteEx.o \
./application/ucgui/MemDev/GUIDEV_XY2PTR.o 

C_DEPS += \
./application/ucgui/MemDev/GUIDEV.d \
./application/ucgui/MemDev/GUIDEV_1.d \
./application/ucgui/MemDev/GUIDEV_16.d \
./application/ucgui/MemDev/GUIDEV_8.d \
./application/ucgui/MemDev/GUIDEV_AA.d \
./application/ucgui/MemDev/GUIDEV_Auto.d \
./application/ucgui/MemDev/GUIDEV_Banding.d \
./application/ucgui/MemDev/GUIDEV_Clear.d \
./application/ucgui/MemDev/GUIDEV_CmpWithLCD.d \
./application/ucgui/MemDev/GUIDEV_CopyFromLCD.d \
./application/ucgui/MemDev/GUIDEV_CreateFixed.d \
./application/ucgui/MemDev/GUIDEV_GetDataPtr.d \
./application/ucgui/MemDev/GUIDEV_GetXSize.d \
./application/ucgui/MemDev/GUIDEV_GetYSize.d \
./application/ucgui/MemDev/GUIDEV_Measure.d \
./application/ucgui/MemDev/GUIDEV_ReduceYSize.d \
./application/ucgui/MemDev/GUIDEV_SetOrg.d \
./application/ucgui/MemDev/GUIDEV_Usage.d \
./application/ucgui/MemDev/GUIDEV_UsageBM.d \
./application/ucgui/MemDev/GUIDEV_Write.d \
./application/ucgui/MemDev/GUIDEV_WriteAlpha.d \
./application/ucgui/MemDev/GUIDEV_WriteEx.d \
./application/ucgui/MemDev/GUIDEV_XY2PTR.d 


# Each subdirectory must supply rules for building sources it contributes
application/ucgui/MemDev/%.o: ../application/ucgui/MemDev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -mno-save-restore -O0 -ffunction-sections -fdata-sections -fno-common  -g -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -I"D:\risc_studio\456\nuclei_sdk\NMSIS\DSP\Include" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\NN\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Board\gd32vf103v_rvstar\Include" -I"D:\risc_studio\456\application" -I"D:\risc_studio\456\nuclei_sdk\NMSIS\Core\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include" -I"D:\risc_studio\456\nuclei_sdk\SoC\gd32vf103\Common\Include\Usb" -I"D:\risc_studio\456\application\ucgui" -I"D:\risc_studio\456\application\ucgui\WM" -I"D:\risc_studio\456\application\ucgui\ConvertColor" -I"D:\risc_studio\456\application\ucgui\ConvertMono" -I"D:\risc_studio\456\application\ucgui\Core" -I"D:\risc_studio\456\application\ucgui\Font" -I"D:\risc_studio\456\application\ucgui\JPEG" -I"D:\risc_studio\456\application\ucgui\LCDDriver" -I"D:\risc_studio\456\application\ucgui\MemDev" -I"D:\risc_studio\456\application\ucgui\MultiLayer" -I"D:\risc_studio\456\application\ucgui\Widget" -I"D:\risc_studio\456\application\gui_config" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


