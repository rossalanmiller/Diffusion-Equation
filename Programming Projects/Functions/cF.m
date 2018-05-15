function result = cF(x,t,D,lambda)
%CF Summary of this function goes here
%   Detailed explanation goes here
X = xF(x,lambda);
T = tF(t,D,lambda);
result = X*T;
end

