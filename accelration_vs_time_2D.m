function accelration_vs_time_2D(lower=0, upper=0)
	global t ax ay az loaded_pattern;

	if(lower==0 && upper==0)
		lower=1;
		upper=length(t);
	endif
	figure('name', sprintf('%s | lower = %d, upper = %d', loaded_pattern, lower, upper))
	plot(t(lower:upper), [ax(lower:upper) ay(lower:upper) az(lower:upper)] );
	xlabel('x');
	ylabel('y');
	legend('ax', 'ay', 'az');

endfunction