
function res = plusone( fname , x )

% Supply a function name in the form of a string as the first parameter fname, 
% and the argument to be supplied to this function as the second parameter x
% For example, you may call this function as follows:
% plusone('sin',pi/2)
% plusone('log2',1024)
% plusone('sqrt',441)

	s = strcat(fname,'(',num2str(x),') + 1');
	res = eval(s);

end
