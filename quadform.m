function [x1,x2] = quadform(a,b,c)
	
	d = sqrt(b^2 - 4*a*c);
  %disp(d);
	x1 = (-b+d) / (2*a);
	x2 = (-b-d) / (2*a);
	
end


% On running the command '[x1,x2] = quadform(1,-(10^7 + 10^(-7)),1)',
% the output obtained is as follows:
% x1 =  10000000
% x2 =  9.9652e-08

% NOTE: The above output is not quite correct; 
%       it suffers from numerical inaccuracies that are introduced 
%       due to the huge difference in magnitude between the two roots!

% The accurate answer should be as follows:
% x1 =  10000000
% x2 =  1.0000e-07