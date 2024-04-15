% CurrentDynamic_240409

clc; clear all; close all;

load ./data/CTD_PH_line_data.mat
% T: temperature 수온 
% S: salinity 염분 (단위 X)
% Den: density 밀도 [km/m^3]
% dep: depth 수심
% dists: distance 연안으로부터의 거리
% lats: latitude 정점의 위도
% lons: longtitude 정점의 경도
% stname: station name : 정점 이름

% temperature station
figure
plot(T(:,5), dep)
set(gca, 'ydir', 'rev')     % 뒤집기
title('PH05 profile')       % 제목 설정

ylabel('Depth [m]')         % y축 레이블 설정
xlabel('Temperature [^oC]')

xlim([14 16.5])       % x 데이터 한계 설정
ylim([0, 70])

% 수온 프로파일 그리기
close all

for ii=1:length(stname)
    figure
    plot(T(:,ii), dep)
    set(gca, 'ydir', 'rev')     % y방향 뒤집기
    title(['PH0' num2str(ii) ' temperature profile'])       % 제목 설정

    ylabel('Depth [m]')         % y축 레이블 설정
    xlabel('Temperature [^oC]')
end

% 염분 프로파일 그리기
close all

for ii=1:length(stname)
    figure
    plot(S(:,ii), dep)
    set(gca, 'ydir', 'rev')
    title(['PH0' num2str(ii) ' salinity profile'])
    ylabel('Depth [m]')
    xlabel('Salinity')
end

% None = Not a Number

%
figure
contourf(dists, dep, T, [0:0.1:17], 'linestyle', 'none')    % contour에 색을 채워넣음 contourf
set(gca, 'ydir', 'rev')
cb = colorbar

hold on
[c, h] = contour(dists, dep, T, [5:5:15], 'color', 'k')
clabel(c, h)
[c1, h1] = contour(dists, dep, T, [1:4], 'color', 'k', 'linestyle', '--')
clabel(c1, h1)
ylim([0 400])

ylabel('Depth [m]')
xlabel('Temperature [^oC]')
title(['Cross section'])
title(cb, 'T[^oC]')



% load ./data/ADT_30_50N_126_142E.mat
