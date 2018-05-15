clear all;          % anything after the % means comments just for FYI  


x = linspace(0,.002,500);  % generates x vector between 0 and .002, with default 100 points
t = linspace(0,800, 1000); % generates t vector between 0 and 800, with default 100 points

for i = 1:length(t)
    for j = 1:length(x)
        c(i,j)=0;       % initialize the c        
    end
end

D = 10^-10;
L = .002;

for n = 1:200
    lambda = lambdaF(n,L);
    for i = 1:length(t)
        for j = 1:length(x)
            c(i,j) = c(i,j) + (2/L)*cF(x(j),t(i),D,lambda);
        end
    end
end


c = c/c(1,1);

mesh(x, t, c);

%plot(x,c(100,:),'r')
%plot(x, c(2,:), 'b', x, c(20,:), 'k', x, c(40,:), 'y', x,c(80,:),'g', x, c(99,:));
%axis([0 5e-4 -.02 0.08])