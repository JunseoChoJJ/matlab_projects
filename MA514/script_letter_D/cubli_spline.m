n = 12;
t = 1:n;
x = [0 -1 -0.9 -2 -2 0 3 4 2.8 1 0.5 1.2];
y = [0 5 3 1 2 1.5 1.7 4 6.7 7 4.2 0.5];
for i = 1:n-1
h(i) = t(i+1) - t(i);
end
for i = 1:n-1
b(i) = (6 * y(i+1) - y(i)) / h(i);
end
u(1) = 2*(h(1) + h(2));
v(1) = b(2) - b(1);
for i = 2:n-1
u(i) = 2*(h(i) + h(i-1)) - h(i-1) * h(i-1) / u(i-1);
v(i) = b(i) - b(i-1) -h(i-1) * v(i-1) / u(i-1);
end
z(12) = 0;
for i = n-1:-1:1
z(i) = (v(i) - h(i) * z(i+1)) / u(i);
end
for i = 1:n-1
A(i) = (z(i+1) - z(i)) / (6* h(i));
end
for i = 1:n-1
B(i) = z(i) / 2;
end
for i = 1: n-1
C(i) = -h(i) * z(i+1) / 6 -h(i) * z(i) / 3 + (y(i+1) - y(i)) / h(i);
end

S = @(p)y(i)+(p-x(i))*(C(i)+(p-x(i))*(B(i)+(p-x(i))*A(i)));
n = 12;
t = 1:n;
x = [0 -1 -0.9 -2 -2 0 3 4 2.8 1 0.5 1.2];
y = [0 5 3 1 2 1.5 1.7 4 6.7 7 4.2 0.5];
for i = 1:n-1
h(i) = t(i+1) - t(i);
end
for i = 1:n-1
b(i) = (6 * y(i+1) - y(i)) / h(i);
end
u(1) = 2*(h(1) + h(2));
v(1) = b(2) - b(1);
for i = 2:n-1
u(i) = 2*(h(i) + h(i-1)) - h(i-1) * h(i-1) / u(i-1);
v(i) = b(i) - b(i-1) -h(i-1) * v(i-1) / u(i-1);
end
z(12) = 0;
for i = n-1:-1:1
z(i) = (v(i) - h(i) * z(i+1)) / u(i);
end
for i = 1:n-1
A(i) = (z(i+1) - z(i)) / (6* h(i));
end
for i = 1:n-1
B(i) = z(i) / 2;
end
for i = 1: n-1
C(i) = -h(i) * z(i+1) / 6 -h(i) * z(i) / 3 + (y(i+1) - y(i)) / h(i);
end
S = @(p)y(i)+(p-x(i))*(C(i)+(p-x(i))*(B(i)+(p-x(i))*A(i)));
for i = 1:n-1
  Q(i) = S(i);
end
