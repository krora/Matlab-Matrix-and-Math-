
function res =  plusone( fh , x )

% Supply a function handle as the first parameter fh, 
% and the argument to be supplied to this function as the second parameter x
% For example, you may call this function as follows:
% plusone(@sin,pi/2)
% plusone(@log2,1024)
% plusone(@sqrt,441)

	res = fh(x) + 1;
  
end

