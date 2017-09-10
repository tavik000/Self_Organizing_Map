%Main process of Self-organizing map
clear all
close all 
% initialization
[sig0,t1,r0,t2,x,sam_name,x_nor,w,n] = initialization();

for n1=1:n % for n interations; n1: current iterations; n: the number of iterations
    %show the process precentage
    if mod(n1,10)==0
      floor((n1/n)*100)
    end
    
    for m=1:16 % m for each animal's type (each input)
        % competitive_process
        [i]=competitive_process(m,x_nor,w);  
        % cooperative_process & adaptive_process
        [w,d,h]=cooperative_process(i,sig0,t1,w,n1,r0,t2,x_nor,m);
    end
end

%mapping_process 
[map,result]=mapping_process(x_nor,w,sam_name);

