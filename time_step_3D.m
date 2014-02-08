function time_step_3D(lower=0, upper=0)
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