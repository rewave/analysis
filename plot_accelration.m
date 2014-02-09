%plot accelration ax,ay,az wrt t for a give pattern (loaded into global memory)

function plot_accelration(discrete=false)
	global t ax ay az loaded_pattern;

	figure('name', sprintf('%s', loaded_pattern))
	
	if(discrete)
		plot(t, ax, 'og', 'markersize', 2, t, ay, 'xb', 'markersize', 2 , t, az, '*c', 'markersize', 2);
	else
		plot(t, ax, 'g', t, ay, 'b', t, az, 'c');
	end
	xlabel('time ->');
	ylabel('accelration ->');
	legend('ax', 'ay', 'az');

	clear discrete;
end