% CurrentDynamic_240319

clc; clear all; close all

% make 3D matrix
b=[2 3 4; 5 6 7]; c=[2 3 4; 5 6 7]; d=[2 3 4; 5 6 7];

M(:,:,1)=b
M(:,:,2)=c
M(:,:,3)=d

clc; clear all; close all

% extracct components of 3D variable
load data_matrix.mat

% find 244
mats(2,4,4);

% load distance
clc; clear all; close all;

load F:/CurrentDynamic/data/Distance_data.mat   % D t 변수 load
load ./data/Distance_data.mat   % 위와 같은 의미

% plot
figure
plot(t,D)

% 미분을 통해 속도 구하기
dt=t(2:end)-t(1:end-1);
dD=D(2:end)-D(1:end-1);

v=dD./dt;
tv=( t(2:end)+t(1:end-1) ) / 2

figure
plot(tv,v)

