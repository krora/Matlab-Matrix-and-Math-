
source('mgs.m')

function res = orthogonalize(m,n)

% Numerically orthogonalize basis functions 1,x,x^2,x^3,...,x^n on interval [-1,1],
% where the basis functions are sampled on m equally spaced points on [-1,1]
% Plot the resulting orthogonalized basis on [-1,1]

  z = linspace(-1,1,m);
  for i=1:m
    for j=1:n
      A(i,j) = z(i)**(j-1);
    end
  end
  %disp(A);
  [Q, R] = mgs(A);
  %disp('-------------------------------------------------');
  %disp(Q);
  for j=1:n
  %  subplot(2,n/2,j) plot(Q(:,j),z) title(strcat('x^',num2str(j)));
    plot(Q(:,j),z,'r');
    hold on
  end
  
end