function [v] = EulerCuachy(f, u0, x0, X, n)
%EULERCUACHY Summary of this function goes here
%   Detailed explanation goes here
v = zeros(4,n+1); %Заполнение матрицы 4хn+1 нулями
h = (X - x0) / n; %Разбиение на отрезки
y(1:n+1) = 0;
y(1) = u0;
x(1:n+1) = 0;
x(1) = x0;
%Сам метод Эйлера-Коши
for k=1:1:n
    y(k+1) = y(k) + h * f(x(k), y(k));
    y(k+1) = y(k) + h * ((f(x(k), y(k)) + f(x(k), y(k+1)))/2);
    x(k+1) = x(k) + h;
end
v(1,1:end) = y(1:end);
v(2,1:end) = x(1:end);
v(3,1:end) = n;
v(4,1:end) = 0; %Переменная для подсчёта количества итераций
end

