/*
 * mpu.h
 *
 *  Created on: 2021年7月26日
 *      Author: tim
 */

#ifndef APPLICATION_MPU_H_
#define APPLICATION_MPU_H_


typedef  unsigned char  u8;
typedef  unsigned short int  u16;
//****************************************
// ¶¨ÒåMPU6050ÄÚ²¿µØÖ·
//****************************************
#define	SMPLRT_DIV		0x19	//ÍÓÂÝÒÇ²ÉÑùÂÊ£¬µäÐÍÖµ£º0x07(125Hz)
#define	CONFIG			0x1A	//µÍÍ¨ÂË²¨ÆµÂÊ£¬µäÐÍÖµ£º0x06(5Hz)
#define	GYRO_CONFIG		0x1B	//ÍÓÂÝÒÇ×Ô¼ì¼°²âÁ¿·¶Î§£¬µäÐÍÖµ£º0x18(²»×Ô¼ì£¬2000deg/s)
#define	ACCEL_CONFIG	0x1C	//¼ÓËÙ¼Æ×Ô¼ì¡¢²âÁ¿·¶Î§¼°¸ßÍ¨ÂË²¨ÆµÂÊ£¬µäÐÍÖµ£º0x01(²»×Ô¼ì£¬2G£¬5Hz)
#define	ACCEL_XOUT_H	0x3B
#define	ACCEL_XOUT_L	0x3C
#define	ACCEL_YOUT_H	0x3D
#define	ACCEL_YOUT_L	0x3E
#define	ACCEL_ZOUT_H	0x3F
#define	ACCEL_ZOUT_L	0x40
#define	TEMP_OUT_H		0x41
#define	TEMP_OUT_L		0x42
#define	GYRO_XOUT_H		0x43
#define	GYRO_XOUT_L		0x44	
#define	GYRO_YOUT_H		0x45
#define	GYRO_YOUT_L		0x46
#define	GYRO_ZOUT_H		0x47
#define	GYRO_ZOUT_L		0x48
#define	PWR_MGMT_1		0x6B	//µçÔ´¹ÜÀí£¬µäÐÍÖµ£º0x00(Õý³£ÆôÓÃ)
#define	WHO_AM_I			0x75	//IICµØÖ·¼Ä´æÆ÷(Ä¬ÈÏÊýÖµ0x68£¬Ö»¶Á)
#define	SlaveAddress	0xD0	//IICÐ´ÈëÊ±µÄµØÖ·×Ö½ÚÊý¾Ý£¬+1Îª¶ÁÈ¡

#define MPU_60X0_PWR_MGMT_1_REG_ADDR        0x6B  
#define MPU_60X0_USER_CTRL_REG_ADDR         0x6A  
#define MPU_60X0_SMPLRT_DIV_REG_ADDR        0x19  
#define MPU_60X0_CONFIG_REG_ADDR            0x1A  
#define MPU_60X0_GYRO_CONFIG_REG_ADDR       0x1B  
#define MPU_60X0_ACCEL_CONFIG_REG_ADDR      0x1C  
#define MPU_60X0_FIFO_EN_REG_ADDR           0x23  
  
#define MPU_60X0_RESET_REG_VALU             0x80  
#define MPU_60X0_PWR_MGMT_1_REG_VALU        0x09    // Disable temperature sensor, PLL with X axis gyroscope reference  
#define MPU_60X0_USER_CTRL_REG_VALU         0x45    // Enable FIFO. Reset FIFO and signal paths for all sensors  
#define MPU_60X0_SMPLRT_DIV_REG_VALU        0x00    // DLPF_CFG is 0x01, so Gyroscope Output Rate = 1kHz, divided by 1, still 1kHz  
#define MPU_60X0_CONFIG_REG_VALU            0x03    // 184Hz 2.0ms 188Hz 1.9ms 1kHz. So there will be 6x2 bytes new data in FIFO every 1ms  
#define MPU_60X0_GYRO_CONFIG_REG_VALU       0x08    // Gyroscope works at 500dps. If selftest is needed, REMEMBER to put this to 250dps  
#define MPU_60X0_ACCEL_CONFIG_REG_VALU      0x08    // Accelerometer works at 4g range. If selftest is needed, REMEMBER to put this to 8g range  
#define MPU_60X0_FIFO_EN_REG_VALU           0x78    // Only enable accel and gyro  




u16 GetData(u8 REG_Address) ;
void InitMPU6050(void);



#endif /* APPLICATION_MPU_H_ */
