% Code for plotting unit step, unit ramp, unit impulse signal:
clc 
clear all 
close all 
t = -10:0.01:10 
step = t>=0 
subplot(3,1,1); 
plot(t,step); 
xlabel('time'); 
ylabel('amplitude'); 
title('unit step'); 
ramp = t.*step 
subplot(3,1,2); 
plot(t,ramp); 
xlabel('time'); 
ylabel('amplitude'); 
title('unit ramp'); 
impulse = t==0 
subplot(3,1,3); 
plot(t,impulse); 
xlabel('time'); 
ylabel('amplitude'); 
title('unit impulse');

% Code for plotting discrete signal:

x = -4:3 
y = [1,2,3,3,2,1,4,1] 
stem(x,y)

%Code for plotting two different discrete signal and show their addition and subtraction
clear all 
close all 
t = -10:2:20 
n1 = t>=0 & t<=10 subplot(4,1,1); 
stem(t,n1); 
xlabel('time'); 
ylabel('amplitude'); 
title('1st Signal'); 
n2 = t>=5 & t<=15 subplot(4,1,2); 
stem(t,n2); 
xlabel('time'); 
ylabel('amplitude'); 
title('2nd Signal'); 
add = n1+n2 subplot(4,1,3); 
stem(t,add); 
xlabel('time'); 
ylabel('amplitude'); 
title('Addition'); 
sub = n1-n2 subplot(4,1,4); 
stem(t,sub); 
xlabel('time'); 
ylabel('amplitude'); 
title('Subtraction');

