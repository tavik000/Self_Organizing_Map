# Self_Organizing_Map

Self_Organizing_Map
 
This is a Self_Organizing_Map appilication with Matlab. 

What is Self_Organizing Map (SOM) ? 
Check this out 
https://en.wikipedia.org/wiki/Self-organizing_map

## Design
I have designed 6 process for SOM. There are som( main process), initialization, competitive_process, cooperative_process, adaptive_process, mapping_process.

Som: main process for som, call each process function one by one in each iteration.

Initialization: For initializing input variable and parameters

Competitive_process: Obtain the winning neuron of each sample(input)

Cooperative_process: Calculate distance between winning neuron and each neuron and topological neighborhood function 

Adaptive_process: Calculate change of weight and adjust weight

Mapping_process: Show the context map after all iteration. step 1, find the neuron of strongest responses sample. step 2, fill the unoccupied neuron


## Parameters of my code
sig0 = 5; 
t1 = 1000/(log(sig0));  
r0 = 0.1;  
t2 = 1000;  





Author: key




-----

## Screenshots

![scr01](https://github.com/tavik000/Self_Organizing_Map/raw/master/Screenshots/scr01.jpg)



**If you like this, please leave a star.**

-----

## Sponsorship
Feel free to support me for no reasons via Wechat Pay or Alipay with QR code below



![wechat pay](https://github.com/tavik000/Self_Organizing_Map/raw/master/Screenshots/wechatpay.png)
![alipay](https://github.com/tavik000/Self_Organizing_Map/raw/master/Screenshots/alipay.jpg)




## Contact



Email:  tavik002@gmail.com

-----

**All Copyright Reserved**
