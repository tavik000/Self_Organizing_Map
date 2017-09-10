function [w]=adaptive_process(r0,t2,i,h,w,x_nor,m,n1)
 
  % deltaw: change of the weight vector in neuron j
  % r(n): learning rate at n iterations
  % n1: current iterations
 
  r(n1)=r0*exp(-n1/t2);
  deltaw=r(n1)*h.*(x_nor(m,:)-w);
  w=w+deltaw;
  
end