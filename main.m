clc;
close all;
addpath('functions');
Input_path = '.\images\';  
Output_path='.\results\';
namelist = dir(strcat(Input_path,'*.jpg'));
len = length(namelist);
tic;
for i = 1:len
    name=namelist(i).name; 
    rgbImage=double(imread(strcat(Input_path, name)))/255;
    output = HFM(rgbImage);
    imwrite(output,[Output_path,name]);                                                
end
toc;

