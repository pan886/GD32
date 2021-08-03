TIMxCLK 频率设置为 systemcoreclock，预分频器为 5400， TIMER1 计数器时钟为 20KHz。 
TIMER1配置为定时模式，定时为0.2s(4000/20000 = 0.2s)，且 CH0 更新率 = TIMER1 计数器时钟/CH0CV = 20000/4000 = 5Hz。 
使能通道 0 中断，因此 TIMER1 每 0.2s 产生一个中断，LED1 每 0.2 秒翻转一次。
