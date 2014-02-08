%visualize data logs

clear; close all;

addpath('logs/');
ls logs;
log_file = input('Enter file to visualize : ', 's');

data = load(log_file);
printf('Loaded file %s\n', log_file);

t  = data(:,1);
ax = data(:,2);
ay = data(:,3);
az = data(:,4);
wx = data(:,5);
wy = data(:,6);
wz = data(:,7);

function plot_meta(x,y)
	x_l=input('x_label : ', 's');
	y_l=input('y_label : ', 's');
	figure('name', strcat('Plot of ', y, ' against ', x));
	plot(x,y);
	x_label(x_l);
	y_label(y_l);
end

plot_meta();