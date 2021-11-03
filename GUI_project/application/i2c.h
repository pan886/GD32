/*
 * i2c.h
 *
 *  Created on: 2021年7月26日
 *      Author: tim
 */

#ifndef APPLICATION_I2C_H_
#define APPLICATION_I2C_H_


#define IIC_SCL(x)   x?gpio_bit_write(GPIOA,GPIO_PIN_5,SET):gpio_bit_write(GPIOA,GPIO_PIN_5,RESET)
#define IIC_SDA(x)   x?gpio_bit_write(GPIOA,GPIO_PIN_6,SET):gpio_bit_write(GPIOA,GPIO_PIN_6,RESET) //SDA
#define READ_SDA   gpio_input_bit_get(GPIOA,GPIO_PIN_6)//PCin(11)
#define SDA_OUT()   gpio_init(GPIOA,GPIO_MODE_OUT_PP,GPIO_OSPEED_50MHZ,GPIO_PIN_6)
#define SDA_IN()    gpio_init(GPIOA,GPIO_MODE_IN_FLOATING,GPIO_OSPEED_50MHZ,GPIO_PIN_6)

typedef  unsigned char  u8;


#endif /* APPLICATION_I2C_H_ */
