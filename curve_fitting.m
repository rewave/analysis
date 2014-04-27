function curve_fitting(file_name, is_template, orders=[3])
	
	load_log(file_name, is_template);
	global ax ay az t loaded_pattern;
	original = [ax ay az];

	for	i=orders
		P = [polyfit(ax, t, i); polyfit(ay, t, i); polyfit(az, t, i)];

		% P = [
		%	ax, bx, cx, dx
		%	ay, by, cy, dy
		%	az, bz, cz, dz
		%	]

		Y = [polyval(P(1,:), t), polyval(P(2, :), t), polyval(P(3, :), t)]; 
		
		colors = [
			'green'
			'blue'
			'cyan'	
		];

		figure('name', sprintf('%s : order = %d', loaded_pattern, i));
		hold on;

		for i = 1:3;
			plot(t, original(:, i),'s', 'color', colors(i));
			%size(Y)
			plot(t, Y(:,i),'-' ,'color', colors(i));
			%plot(X(i, :), Y(i, :), '-', 'color', colors(i), original(:,i), t, 'v', 'color', colors(i))
		end
	end
end