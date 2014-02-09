%calculate displacement of a point
function [v, s] = displacement(u, t, a)
	s = u*t + 0.5*a*(t^2);
	v = u + a*t;
end

%plot motion of phone in 3D space using formula s = ut + 0.5at^2 (starting at origin)
function plot_motion(lower=0, upper=0)
	global t ax ay az loaded_pattern;

	if(lower==0 && upper==0)
		lower=1;
		upper=length(t);
	else
		temp=find(t>=lower & t<=upper);
		lower=temp(1);
		upper=temp(length(temp)); %select last element
	end

	num_elements=length(t(lower:upper));

	figure('name', sprintf('%s | Motion in space | lower = %d, upper = %d', loaded_pattern, lower, upper));
	xlabel('x');
	ylabel('y');
	
	sx = sy = sz = zeros(num_elements, 1);
	for i=1:num_elements
	end

	clear temp i sx sy sz num_elements;
end