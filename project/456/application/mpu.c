/*
 * mpu.c
 *
 *  Created on: 2021年7月26日
 *      Author: tim
 */
#include "mpu.h"


void delay_ms(u8 ms)
{
	int i,j,k;
	for(i=0;i<255;i++)
		for(j=0;j<17;j++)
			for(k=0;k<ms;k++);



}


void delay_us(u8 us)
{
	int i,j,k;
	for(i=0;i<50;i++)
		for(j=0;j<us;j++);

}


//**************************************
//ÏòI2CÉè±¸Ð´ÈëÒ»¸ö×Ö½ÚÊý¾Ý
//**************************************
void Single_WriteI2C(u8 REG_Address,u8 REG_data)
{
    IIC_Start();                  //ÆðÊ¼ÐÅºÅ
    IIC_Send_Byte(SlaveAddress);   //0xD0
    IIC_Send_Byte(REG_Address);    //ÄÚ²¿¼Ä´æÆ÷µØÖ·£¬
    IIC_Send_Byte(REG_data);       //ÄÚ²¿¼Ä´æÆ÷Êý¾Ý£¬
    IIC_Stop();                   //·¢ËÍÍ£Ö¹ÐÅºÅ
}

//**************************************
//´ÓI2CÉè±¸¶ÁÈ¡Ò»¸ö×Ö½ÚÊý¾Ý
//**************************************
u8 Single_ReadI2C(u8 REG_Address)
{
	u8 REG_data;
	IIC_Start();                   //ÆðÊ¼ÐÅºÅ
	IIC_Send_Byte(SlaveAddress);    //0xD0
	//IIC_Wait_Ack();
	IIC_Send_Byte(REG_Address);     //0x75
	//IIC_Stop();  //726add
	//IIC_Wait_Ack();

	IIC_Start();                   //ÆðÊ¼ÐÅºÅ
	IIC_Send_Byte(SlaveAddress+1);  //0xD1

	REG_data=IIC_Read_Byte(0);       //¶Á³ö¼Ä´æÆ÷Êý¾Ý	0 	NACK   1  ACK
	IIC_Stop();                    //Í£Ö¹ÐÅºÅ
	return REG_data;
}

//**************************************
//³õÊ¼»¯MPU6050
//**************************************
void InitMPU6050(void)
{
	//IIC(&dis[0],1,0x1c,GY_ADDR,WRITE);
#if 0
	Single_WriteI2C(PWR_MGMT_1, 0x00);	//½â³ýÐÝÃß×´Ì¬
	Single_WriteI2C(SMPLRT_DIV, 0x07);
	Single_WriteI2C(CONFIG, 0x06);
	Single_WriteI2C(GYRO_CONFIG, 0x18);
	Single_WriteI2C(ACCEL_CONFIG, 0x01);
#endif

	IIC_Init();
	delay_ms(10);
    Single_WriteI2C(MPU_60X0_PWR_MGMT_1_REG_ADDR, MPU_60X0_RESET_REG_VALU);
    delay_ms(50);
    //Single_WriteI2C(MPU_60X0_PWR_MGMT_1_REG_ADDR, MPU_60X0_PWR_MGMT_1_REG_VALU);
    Single_WriteI2C(MPU_60X0_USER_CTRL_REG_ADDR, MPU_60X0_USER_CTRL_REG_VALU);
    Single_WriteI2C(MPU_60X0_SMPLRT_DIV_REG_ADDR, MPU_60X0_SMPLRT_DIV_REG_VALU);
    Single_WriteI2C(MPU_60X0_CONFIG_REG_ADDR, MPU_60X0_CONFIG_REG_VALU);
    Single_WriteI2C(MPU_60X0_GYRO_CONFIG_REG_ADDR, MPU_60X0_GYRO_CONFIG_REG_VALU);
    Single_WriteI2C(MPU_60X0_ACCEL_CONFIG_REG_ADDR, MPU_60X0_ACCEL_CONFIG_REG_VALU);
    Single_WriteI2C(MPU_60X0_FIFO_EN_REG_ADDR, MPU_60X0_FIFO_EN_REG_VALU);

}


//**************************************
//ºÏ³ÉÊý¾Ý
//**************************************
u16 GetData(u8 REG_Address)
{
    u8 H,L;
    H=Single_ReadI2C(REG_Address);
    L=Single_ReadI2C(REG_Address+1);
    return (H<<8)+L;   //ºÏ³ÉÊý¾Ý
}


