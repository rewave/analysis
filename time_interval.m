%see plots of time between two succesive readings

function time_interval()
	global t loaded_pattern;

	figure('name', sprintf('%s : cumulative time', loaded_pattern));
	readings = 1:length(t);
	bar(readings, t);
	xlabel('Reading number ->');
	ylabel('Cumulative time(s) ->');

	%
	figure('name', sprintf('%s : time difference', loaded_pattern));
	temp = readings;
	for i=2:length(t)
		temp(i) = t(i) - t(i-1);
	end

	bar(readings, temp);
	xlabel('Reading number ->');
	ylabel('Diffence in succesive time intervals(s)->');

	%
	hold on;
	line([0;length(readings)], [mean(temp); mean(temp)]);
	
	%
	clear temp readings;
end