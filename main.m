%���ڴ���30G FMCWϵͳ�ɼ����ɼ�������Ƶԭʼ�ź�s(theta,z,t)���õ�s(theta,z,w)
%�ź��t������2017-11-6

clc; clear;
%% ������ȡ
folderpath = 'D:\ͬ��\FangCloudV2\�����ļ�\����̫����\ʵ������\30G FMCW\17.11.28'; 
file_names = ls(folderpath);  
data_num = length(file_names)-2;   %��������Ŀ
z_num = 16;   %��ɨ������Ŀ
theta_num = floor(data_num/z_num);  %ɨ��Ƕ���
t_num = 65536;  %һ��ɨ���ʱ��������
data = zeros(t_num, theta_num, z_num);  %Ԥ�Ƚ������ݾ���ά��

for i = 1:theta_num
    for j = 1:z_num
        data(:, i, j) = importdata(strcat(folderpath, '\', file_names((i-1)*16+j+2, :)));
    end
end


%% ��������


%% 