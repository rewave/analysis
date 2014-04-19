function load_log(log_file='', template=false)
	global t ax ay az wx wy wz loaded_pattern;
	%Load logged data from sensors into memory
	addpath('logs/');
	if template
		data = load(strcat('templates/',log_file));
	else
		ls logs;
		printf('Use templates using templates/a.txt\n');
		log_file = input('Enter file to visualize : ', 's');
		data = load(log_file);	
	end

	t  = data(:,1);
	ax = data(:,2);
	ay = data(:,3);
	az = data(:,4);
	wx = data(:,5);
	wy = data(:,6);
	wz = data(:,7);
	loaded_pattern = log_file;
	printf('Loaded file %s\nThe following variables are available : t, ax, ay, az, wx, wy, wz\n', log_file);
	clear log_file data;
end