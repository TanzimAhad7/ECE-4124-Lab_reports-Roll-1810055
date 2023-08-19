% Code for autocorrelation of continuous signal by delaying a square wave
 clc
 clear all
 close all
 t = 0:0.001:4;
 a1 = t>=0 & t<=1;
 a2 = t>=1.5 & t<=2.5;
 a = a1-a2;
 subplot(3, 1, 1);
 plot(a);
 title('Square wave signal');
 d1 = t>=1 & t<=2;
 d2 = t>=2.5 & t<=3.5;
 d = d1-d2;
 subplot(3, 1, 2);
 plot(d);
 title('Delay signal');
 N = -(length(t)-1):(length(t)-1);
 corr = xcorr(d,a);
 subplot(3, 1, 3);
 plot(N,corr);
 title('Auto correlation signal');
 % max value calculation
 maxx = max(corr);
 F = find(corr == maxx);
 maximum_value = F-length(t)
 
 % code for z transform
 clc
clear all
close all
syms n z
x = 2^n
z_transform = ztrans(x)
 