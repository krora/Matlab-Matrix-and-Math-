function [x1,x2] = quadform2(a,b,c)
	
	d = sqrt(b^2 - 4*a*c);
	%disp(d);
	x1 = (-b - sign(b)*d) / (2*a);
	x2 = c / (a*x1);
	
end


% On running the command '[x1,x2] = quadform2(1, -(10^7 + 10^(-7)), 1)',
% the output obtained is as follows:
% x1 =  10000000
% x2 =  1.0000e-07

% NOTE: The above output is perfectly accurate!
% It does not suffer from the numeric inaccuracies 
% that we observed while executing 'quadform(1, -(10^7 + 10^(-7)), 1)', 
% even when the difference in magnitude between the two roots is huge.
