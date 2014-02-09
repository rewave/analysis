%plot motion of phone in 3D space using formula s = ut + 0.5at^2 (starting at origin)
function plot_motion(lower=0, upper=0)
	global t ax ay az loaded_pattern;

	if(lower==0 && upper==0)
		lower=1;
		upper=length(t);
	endif
	figure('name', sprintf('%s | lower = %d, upper = %d', loaded_pattern, lower, upper));
	plot3(ax(lower:upper),ay(lower:upper),az(lower:upper));
	xlabel('x');
	ylabel('y');

endfunction