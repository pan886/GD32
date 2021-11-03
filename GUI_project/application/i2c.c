/*
 * i2c.c
 *
 *  Created on: 2021年7月23日
 *      Author: tim
 */
//#include "I2C.h"
#include "gd32vf103_gpio.h"
//////////////////////////////////////////////////////////////////////////////////
//±¾³ÌÐòÖ»¹©Ñ§Ï°Ê¹ÓÃ£¬Î´¾­×÷ÕßÐí¿É£¬²»µÃÓÃÓÚÆäËüÈÎºÎÓÃÍ¾
//Mini STM32¿ª·¢°å
//IIC Çý¶¯º¯Êý
//ÕýµãÔ­×Ó@ALIENTEK
//¼¼ÊõÂÛÌ³:www.openedv.com
//ÐÞ¸ÄÈÕÆÚ:2010/6/10
//°æ±¾£ºV1.0
//°æÈ¨ËùÓÐ£¬µÁ°æ±Ø¾¿¡£
//Copyright(C) ÕýµãÔ­×Ó 2009-2019
//All rights reserved
//////////////////////////////////////////////////////////////////////////////////
#include "i2c.h"
//³õÊ¼»¯IIC

//IO²Ù×÷º¯Êý


void IIC_Init(void)
{



	IIC_SDA(1);
	IIC_SCL(1);

}
//²úÉúIICÆðÊ¼ÐÅºÅ
void IIC_Start(void)
{
	delay_us(50);//SDA_OUT();     //sdaÏßÊä³ö
	IIC_SDA(1);
	IIC_SCL(1);
	delay_us(50);
	IIC_SDA(0);//START:when CLK is high,DATA change form high to low
	delay_us(50);
	IIC_SCL(0);//Ç¯×¡I2C×ÜÏß£¬×¼±¸·¢ËÍ»ò½ÓÊÕÊý¾Ý
}
//²úÉúIICÍ£Ö¹ÐÅºÅ
void IIC_Stop(void)
{
	SDA_OUT();//sdaÏßÊä³ö
//	IIC_SCL(0);
	IIC_SDA(0);//STOP:when CLK is high DATA change form low to high
 	//delay_us(20);
	IIC_SCL(1);
	delay_us(50);
	IIC_SDA(1);//·¢ËÍI2C×ÜÏß½áÊøÐÅºÅ
	delay_us(50);
}
//µÈ´ýÓ¦´ðÐÅºÅµ½À´
//·µ»ØÖµ£º1£¬½ÓÊÕÓ¦´ðÊ§°Ü
//        0£¬½ÓÊÕÓ¦´ð³É¹¦
uint8_t IIC_Wait_Ack(void)
{
	uint8_t ucErrTime=0;
	SDA_IN();      //SDAÉèÖÃÎªÊäÈë

	//IIC_SDA(1);
	delay_us(20);
	IIC_SCL(1);delay_us(20);
//	while(READ_SDA)
//	{
//		ucErrTime++;
//		if(ucErrTime>250)
//		{
//			IIC_Stop();
//			return 1;
//		}
//	}
	IIC_SCL(0);//Ê±ÖÓÊä³ö0
	delay_us(20);
	return 0;
}
//²úÉúACKÓ¦´ð
void IIC_Ack(void)
{
	IIC_SCL(0);
	SDA_OUT();
	IIC_SDA(0);
	delay_us(20);
	IIC_SCL(1);
	delay_us(20);
	IIC_SCL(0);
}
//²»²úÉúACKÓ¦´ð
void IIC_NAck(void)
{
	delay_us(40);
	//IIC_SCL(0);
	SDA_OUT();
	IIC_SDA(1);
	//delay_us(20);
	IIC_SCL(1);
	delay_us(20);
	IIC_SCL(0);
	delay_us(10);
}
//IIC·¢ËÍÒ»¸ö×Ö½Ú
//·µ»Ø´Ó»úÓÐÎÞÓ¦´ð
//1£¬ÓÐÓ¦´ð
//0£¬ÎÞÓ¦´ð
void IIC_Send_Byte(u8 txd)
{
    u8 t;
	SDA_OUT();
 //   IIC_SCL(0);//À­µÍÊ±ÖÓ¿ªÊ¼Êý¾Ý´«Êä
    for(t=0;t<8;t++)
    {
    	IIC_SDA((txd&0x80)>>7);
    	        txd<<=1;
    	 delay_us(20);
		IIC_SCL(1);
		delay_us(20);
		IIC_SCL(0);
		delay_us(20);
    }
    delay_us(20);
    IIC_SCL(1);
    delay_us(20);
    IIC_SCL(0);
    delay_us(10);
}
//¶Á1¸ö×Ö½Ú£¬ack=1Ê±£¬·¢ËÍACK£¬ack=0£¬·¢ËÍnACK
u8 IIC_Read_Byte(unsigned char ack)
{

	SDA_IN();
	//delay_us(80);
	unsigned char i,rx,data=0;

    for(i=0;i<8;i++ )
	{



        IIC_SCL(0);


		delay_us(40);
		IIC_SCL(1);
		delay_us(10);
		data|=(READ_SDA<<(8-i-1));
		delay_us(10);

		 IIC_SCL(0);
      //  receive<<=1;
        //if(READ_SDA)receive++;
        //delay_us(20);

    }

   // if (!ack)
        IIC_NAck();//·¢ËÍnACK
   // else
   //     IIC_Ack(); //·¢ËÍACK
    return data;
}
































