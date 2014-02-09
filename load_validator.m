%Check if 't'; 'ax'; 'ay'; 'az'; 'wx'; 'wy'; 'wz' are loaded into memory.

required_variables = {'t'; 'ax'; 'ay'; 'az'; 'wx'; 'wy'; 'wz'};
for i=1:length(required_variables)
	if(exist(required_variables{i}, 'var') == 0)
		printf('%s not loaded [%d]\n', required_variables{i}, exist(required_variables{i}, 'var'));
		break;
	else
		printf('%s loaded\n', required_variables{i});
	end
end
clear required_variables;