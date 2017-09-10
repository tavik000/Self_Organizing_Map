function [w,d,h]=cooperative_process(i,sig0,t1,w,n1,r0,t2,x_nor,m)
 
  % i: winning neuron 
  % j: each neuron of 10*10
  % ai: x-axis of i
  % bi: y-axis of i
  % aj: x-axis of j
  % bj: y-axis of j
  % d: distance between j and i
  % n: the number of iterations
  % n1: current iterations
  % n1: the number of iterations in current process
  % sig(n): exponential decay 
  % h: topological neighborhood function 
  % r0: adaptive_process usage
  % t2: adaptive_process usage
  % w: adaptive_process usage
  % x_nor: adaptive_process usage 
  % m: sample number m; adaptive_process usage 
  
  ai= mod(i-1,10);
  bi=floor((i-1)/10);
  for j=1:100
    aj= mod(j-1,10);
    bj= floor((j-1)/10); 
    d(j)=((ai-aj)^2+(bi-bj)^2)^(1/2);
    sig(n1)=sig0*exp(-n1/t1); 
    h(j)=exp((-(d(j))^2)/(2*(sig(n1))^2));  
    
    % adaptcive_process 
    [w(j,:)]=adaptive_process(r0,t2,i,h(j),w(j,:),x_nor,m,n1);
  end 
  
end