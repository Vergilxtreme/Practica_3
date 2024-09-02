
[t, x] = ode45(@prac3, [0 20], [0 0 0 0]);

figure(1)
plot(t, x(:, 1), "k-")
grid on


function dx=prac3(t,x)

m1 = 290;
m2 = 59;
b1 = 1000;
k1 = 16182;
k2 = 19000;
f = 0;
z = 0.05*sin(0.5*pi*t);
% z = 0.05*sin(20*pi*t);

dx = zeros(4,1);

dx(1) = x(3);
dx(2) = x(4);
dx(3) = (1/m1)*(f + b1*(x(4)-x(3)) + k1*(x(2)-x(1)));
dx(4) = (1/m2)*(-f + k2*(z-x(2)) + b1*(x(3)-x(4)) + k1*(x(1)-x(2)));
end
