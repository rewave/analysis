function fit_many(templates = ['a.txt'  ;'b.txt' ;'c.txt'; 'd.txt'; 'e.txt'; 'A.txt'; 'B.txt';'flick_up.txt'; 'C.txt';'D.txt';'E.txt'])
	for i=1:size(templates, 1) %no. of rows in templates
		curve_fitting(templates(i, :), true,[3,5,8]);
	end
end