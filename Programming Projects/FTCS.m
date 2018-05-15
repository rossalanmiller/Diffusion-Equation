%{
% --- Define constants and initial condition
L = .002;            %  length of domain in x direction
tmax = 800;         %  end time
nx = 100;           %  number of nodes in x direction
nt = 1000;           %  number of time steps
dx = L/(nx-1);
dt = tmax/(nt-1);
r = (1e-10)*dt/dx^2;    
r2=1-2*r;
% --- Loop over time steps
t=0;

u = zeros(1,100);
u(1) = 1;            %   initial condition
for m=1:nt
    uold = u;        %  prepare for next step
    t=t+dt;
    for i=2:nx-1
        u(i) = r*uold(i-1) + r2*uold(i) + r*uold(i+1);
    end
end

plot(u);
%}
























x = linspace(0,.002,500);
t = linspace(0,800, 1000);


for i = 1:length(t)
    for j = 1:length(x)
        c(i,j)=0;       % initialize the c        
    end
end

%intialize u0 with initial conditions
%------------------------------------
u0 = zeros(1,length(x));
ut = zeros(1, length(x));
%------------------------------------
c(1,1) = 0;
u0(1) = 1;
%-----------------------------------
D = 10^-10;
B = (D*.8)/((2e-5)^2);

for j = 1:length(t)
    for i = 2:(length(x)-1)
        ut(i) = u0(i) + (B)*(u0(i-1) - (2*u0(i)) + u0(i+1));
        c(j,:) = ut;
    end
    u0 = ut;
end

%plot(c(800,:));

plot(x, c(2,:), 'b', x, c(20,:), 'k', x, c(40,:), 'y', x,c(80,:),'g', x, c(99,:));
%axis([0 2e-3 0 7e4])
%}
    