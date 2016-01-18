function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors

[r c] = size(x1);
[l d] = size(x2);

fprintf('Size:\nx1: %d %d\n x2: %d %d',r,c,l,d);


x1 = x1(:); x2 = x2(:);

[r c] = size(x1);
[l d] = size(x2);

fprintf('Size:\nx1: %d %d\n x2: %d %d',r,c,l,d);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

temp = 0;
for i=1:size(x1),
    temp = temp + (x1(i) - x2(i))*(x1(i) - x2(i));
end;


sim = exp(-temp/(2*sigma*sigma));



% =============================================================
    
end
