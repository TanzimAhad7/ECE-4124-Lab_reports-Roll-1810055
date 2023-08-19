%Auto corelation
clc
clear all;
x=input('Enter the Array:');
n1=input('Sample Range:');
h=fliplr(x);
n2=-fliplr(n1);
z=[];
for i=1:length(x)
g=h.*x(i);
z=[z;g];
end
[r c]=size(z);
k=r+c;
t=2;
y=[];
cd=0;
while(t<=k)
for i=1:r
for j=1:c
if((i+j)==t)
cd=cd+z(i,j);
end
end
end
t=t+1;
y=[y cd];
cd=0;
end
subplot(3,1,1);
stem(x);
title('Auto Correlation-Signal');
subplot(3,1,2);
nl=min(n1)+min(n2);
nh=max(n1)+max(n2);
t=nl:1:nh;
stem(t,y);
title('without function');
subplot(3,1,3);
z=xcorr(x,x);
stem(t,z);
title('with function');

% cross co relation

clc
clear all;
x=input('Enter the first Array:');
n1=input('Sample Range:');
h=input('Enter the second Array:');
n2=input('Sample Range:');
n2=-fliplr(n2);
z=[];
w=fliplr(h);
for i=1:length(x)
g=w.*x(i);
z=[z;g];
end
[r c]=size(z);
k=r+c;
t=2;
y=[];
cd=0;
while(t<=k)
for i=1:r
for j=1:c
if((i+j)==t)
cd=cd+z(i,j);
end
end
end
t=t+1;
y=[y cd];
cd=0;
end
subplot(4,1,1);
stem(x);
title('First Array');
subplot(4,1,2);
stem(h);
title('Second Array');
subplot(4,1,4);
nl=min(n1)+min(n2);
nh=max(n1)+max(n2);
t=nl:1:nh;
stem(t,y);
title('Without Function');
subplot(4,1,3);
p=xcorr(x,h);
stem(t,p);
title('With Function');
