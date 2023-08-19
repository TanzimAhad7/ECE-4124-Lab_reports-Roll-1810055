clc 
clear all 
close all 
xn = [1 2 3 4]; 
hn = [4 4 3 2]; 
 L = length(xn); 
 M = length(hn); 
 X = [xn, zeros(1,L)]; 
 H = [hn, zeros(1,M)]; 
 for n = 1 : L+M-1 
 y(n)=0; 
 for i = 1 : L 
 if(n-i+1>0) 
 y(n) = y(n)+X(i)*H(n-i+1) 
 %s (n) = H(n-i+1); 
 end 
 end 
 end 
 subplot(3,1,1)