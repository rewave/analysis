load_log('a.txt', true);

global t ax ay az wx wy wz;

function [x,y,z] = true_coordinates(ax,ay,az,gx,gy,gz)
	x = (ax*(cos(gz)*cos(gx)+sin(gz)*sin(gy)*sin(gx)) + ay*(cos(gy)*sin(gx)) + az*(-sin(gz)*cos(gx)+cos(gz)*sin(gy)*sin(gx)));
	y = (ax*(-cos(gz)*sin(gx)+sin(gz)*sin(gy)*cos(gx)) + ay*(cos(gy)*cos(gx)) + az*(sin(gz)*sin(gx)+ cos(gz)*sin(gy)*cos(gx)));;
	z = (ax*(sin(gz)*cos(gy)) + ay*(-sin(gy)) + az*(cos(gz)*cos(gy)));
end

p = [];

for i=1:length(t)
	[x y z] = true_coordinates(ax(i), ay(i), az(i), wx(i), wy(i), wz(i));
	p = [p; [x y z]];
end

ax = p(:,1);
ay = p(:, 2);
az = p(:, 3);

plot_displacement();