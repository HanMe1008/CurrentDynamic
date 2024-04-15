% CurrentDynamic_240312
clc; clear all; close all

a=1; b=3; c=11; z='pknu'
d=c*b;

a=[7 3 2 5 0 11 8];
e=[1 2 3 14 15 16 17];
g=[a b];
h=[1 2 3; 4 5 6; 7 8 9];

% 작은 따움표('')는 큰 따움표("")보다 호환이 안됨 
'Hello'+'world';
'hello'+'world';
'HELLO'+'WORLD';
"hello "+"world";
% 'hello '+'world'; % 실행 X

a=[15 16.1 17.5 19 21];
b=[3 4 5];
c=[1; 2; 3];

% transpose
g=[a c'];

% index
kk=a([1 3 5])
kkk=a([1:4])

% 2D matrix
h=[2 3 5 1; 7 9 3 2];
h2=[h(1,1) h(2,1)]
h3=h(1:2,1)
h4=h(:,1)

i=[1 4 2 1; 3 7 4 2];

m3(:,:,1)=h;
m3(:,:,2)=i;

m3(2,2,1)

c=[1:100];
c=[1:3:100];

day=[1:2:11];
temp=[15 16 17 9 7 10];

figure
plot(day,temp)








