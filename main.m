%用于处理30G FMCW系统采集卡采集到的中频原始信号s(theta,z,t)，得到s(theta,z,w)
%张涵祎创建于2017-11-6

clc; clear;
%% 数据提取
folderpath = 'D:\同步\FangCloudV2\个人文件\激光太赫兹\实验数据\30G FMCW\17.11.28'; 
file_names = ls(folderpath);  
data_num = length(file_names)-2;   %数据总数目
z_num = 16;   %电扫开关数目
theta_num = floor(data_num/z_num);  %扫描角度数
t_num = 65536;  %一次扫描的时域数据量
data = zeros(t_num, theta_num, z_num);  %预先建立数据矩阵维度

for i = 1:theta_num
    for j = 1:z_num
        data(:, i, j) = importdata(strcat(folderpath, '\', file_names((i-1)*16+j+2, :)));
    end
end


%% 参数定义


%% 