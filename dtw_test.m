a = load('logs/templates/a.txt');
b = load('logs/templates/b.txt');
c = load('logs/templates/c.txt');
C = load('logs/templates/C.txt');
o = load('logs/templates/o.txt');

test_o = load('logs/letter_o.txt');
test_o = test_o(122:146, :);

sum = 0;
for i=2:4
	sum += dtw(c(:, i),c(:,i));
end

disp(sum);

