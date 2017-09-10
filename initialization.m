
function [sig0,t1,r0,t2,x,sam_name,x_nor,w,n] = initialization()
% paramter
sig0 = 5;  % exponential decay at the initiation; should be the radious of map size
t1 = 1000/(log(sig0));  % time constant, relative to sig0
r0 = 0.1;  % learning rate; 0.1 is recommended
t2 = 1000;  % tor 2; 1000 is recommended
% x: input data
x=[1 0 0 1 0 0 0 0 1 0 0 1 0; %Dove
   1 0 0 1 0 0 0 0 1 0 0 0 0; %Hen
   1 0 0 1 0 0 0 0 1 0 0 0 1; %Duck
   1 0 0 1 0 0 0 0 1 0 0 1 1; %Goose
   1 0 0 1 0 0 0 0 1 1 0 1 0; %Owl
   1 0 0 1 0 0 0 0 1 1 0 1 0; %Hawk
   0 1 0 1 0 0 0 0 1 1 0 1 0; %Eagle
   0 1 0 0 1 1 0 0 0 1 0 0 0; %Fox
   0 1 0 0 1 1 0 0 0 0 1 0 0; %Dog
   0 1 0 0 1 1 0 1 0 1 1 0 0; %Wolf
   1 0 0 0 1 1 0 0 0 1 0 0 0; %Cat
   0 0 1 0 1 1 0 0 0 1 1 0 0; %Tiger
   0 0 1 0 1 1 0 1 0 1 1 0 0; %Lion
   0 0 1 0 1 1 1 1 0 0 1 0 0; %Horse
   0 0 1 0 1 1 1 1 0 0 1 0 0; %Zebra
   0 0 1 0 1 1 1 0 0 0 0 0 0; %Cow
];
sam_name={'Dove';'Hen';'Duck';'Goose';'Owl';'Hawk';'Eagle';'Fox';'Dog';'Wolf';'Cat';'Tiger';'Lion';'Horse';'Zebra';'Cow';};
% x_nor: normolization of input data
x_nor=[];
for m=1:16
    x_row=0;    
    for n=1:13
       x_row= x_row + (x(m,n))^2;
    end
    for n=1:13  
       x_nor(m,n)= x(m,n)/x_row^(1/2);
    end 
end
% w: synaptic-weight vector of each neuron
w=randn(100,13);
% n: the number of iterations
n=1000;


% up to now, initialization finish
end