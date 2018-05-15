function result = tF(t,D,lambda)
%TF Summary of this function goes here
%   Detailed explanation goes here
exponent = (-D)*(lambda^2)*(t);
result = exp(exponent);
end

