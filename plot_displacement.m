%plot motion of phone in 3D space using formula s = ut + 0.5at^2 (starting at origin)
function plot_displacement(lower=0, upper=0)
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
	
	sx = sy = sz = zeros(num_elements, 1);
	U = [0; 0; 0]; %initial velocity
	
	for i=lower:upper
		if(i>1)
			t_instant = t(i) - t(i-1);
		else
			t_instant = t(i);
		end

		[U, S] = displacement([0; 0; 0], [ax(i); ay(i); az(i)], [t_instant; t_instant; t_instant]);

		sx(i) = S(1); sy(i) = S(2); sz(i) = S(3);
	end

	plot3(sx, sy, sz);
	xlabel('x');
	ylabel('y');

	clear temp i sx sy sz ux yy yz t_instant num_elements;
end

%calculate displacement of a point
%params displacement(u, t, a)
%return [v, s]
function [v, s] = displacement(u, t, a)
	s = u.*t + (0.5*a).*(t.^2);
	v = u + a.*t;
end