% CurrentDynamic_240326

clc; clear all; close all;

% 변수하나만 제거하고 싶을 때는 clear 변수이름

load F:/CurrentDynamic/data/Distance_data.mat   % D t 변수 load

% for 반복문
v(1)=( D(2)-D(1) ) / ( t(2)-t(1) );
v(2)=( D(3)-D(2) ) / ( t(3)-t(2) );

for ii=1:200
    a(ii)=ii;
end

a(1)=1
a(2)=2
a(3)=3
....
a(200)=200

for ii=1:200
    v(ii)=( D(ii+1)-D(ii) ) / ( t(ii+1)-t(ii) );
    tv(ii)=( t(ii+1)+t(ii) ) / 2
    dD(ii)=( D(ii+1)-D(ii) )
    dt(ii)=( t(ii+1)-t(ii) )
end

figure(1, 3, 1)
plot(tv, v)

% integration (적분)
% initial condition

Dc(1)=0;

for ii=1:200
    Dc(ii+1)=Dc(ii)+v(ii)*dt(ii);
end

figure(1, 3, 2)
plot(t,Dc)

% integral with cumsum (cumulative sum) (누적하여 덧셈)
b=[1 2 3 4]
aa=cumsum(b)

Dcc(1)=0;
Dcc(2:201)=cumsum(v).*dt;

figure(1, 3, 3)
plot(t,Dcc)





