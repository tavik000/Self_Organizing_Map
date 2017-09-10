function [i]=competitive_process(m,x_nor,w)
  % i: inedx which the x_nor and w is most similiar with each other£» winning neuron  
  temp=[];
  for n=1:100
    temp(n)=0;
    for k=1:13
      temp(n) = temp(n) + abs(x_nor(m,k)-w(n,k));
    end
  end
  [M,Min_i] = min(temp);  
  i=Min_i;
    
end