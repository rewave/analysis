function curve_fitting(file_name, is_template, orders=[3])
	
	load_log(file_name, is_template);
	global ax ay az t loaded_pattern;
	original = [ax ay az];

	for	i=orders
		P = [
			polyfit(ax, t, i) 
			polyfit(ay, t, i) 
			polyfit(az, t, i)
			];
		

		X = [
			linspace(min(ax), max(ax), 101) 
			linspace(min(ay), max(ay), 101) 
			linspace(min(az), max(az), 101)
			];

		Y = [
			polyval(P(1,:), X(1, :))
			polyval(P(2, :), X(2, :))
			polyval(P(3, :), X(3, :))
			]; 
		
		colors = [
			'green'
			'blue'
			'cyan'	
		];

		figure('name', sprintf('%s : order = %d', loaded_pattern, i));
		hold on;

		for i = 1:3;	
			plot(X(i, :), Y(i, :), '-', 'color', colors(i), original(:,i), t, '*', 'color', colors(i))
		end
	end
end