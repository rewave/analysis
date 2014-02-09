%Load logged data from sensors into memory
clear all;
addpath('logs/');
ls logs;
log_file = input('Enter file to visualize : ', 's');

data = load(log_file);

global t  = data(:,1);
global ax = data(:,2);
global ay = data(:,3);
global az = data(:,4);
global wx = data(:,5);
global wy = data(:,6);
global wz = data(:,7);
global loaded_pattern = log_file;
printf('Loaded file %s\nThe following variables are available : t, ax, ay, az, wx, wy, wz\n', log_file);
clear log_file, data;