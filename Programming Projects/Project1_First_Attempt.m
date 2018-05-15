clear all;          % anything after the % means comments just for FYI  

  

x = linspace(0,.002);  % generates x vector between 0 and 2, with default 100 points

t = linspace(0,800); % generates t vector between 0 and 10, with default 100 points

for i = 1:length(t)

for j = 1:length(x)

    c(i,j)=0;       % initialize the c        

end

end

n = 1;
D = 10^-8;
L = x(length(x));

lambda = ((2*n+1)*pi)/(2*L);
Bn = ((sin(lambda*L))/lambda)*(2/L);

for i = 1:length(t)
    for j = 1:length(x)
        %c(i,j) = sin(x(i)).*cos((2.*x(j)*pi));
        c(i,j) = Bn*(exp(-D*(lambda^2)*t(j)))*(cos(lambda*x(i)));
    end
end

mesh(x,t,c)     % you can use surf(x,t,c)