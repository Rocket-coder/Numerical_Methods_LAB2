function [v] = RungeKuta(f, u0, x0, X, n)
%RUNGE Summary of this function goes here
%   Detailed explanation goes here
v = zeros(4,n+1); %Заполнение матрицы 4хn+1 нулями
h = (X - x0) / n; %Разбиение на отрезки
y(1:n+1) = 0;
y(1) = u0;
x(1:n+1) = 0;
x(1) = x0;
%Сам метод Рунге-Кута
for k = 1:1:n
    K1 = h * f(x(k), y(k));
    K2 = h * f(x(k) + (h/2), y(k) + (K1/2));
    K3 = h * f(x(k) + (h/2), y(k) + (K2/2));
    K4 = h * f(x(k) + h, y(k) + (K3/2));
    y(k+1) = y(k) + ((K1 + 2*K2 + 2*K3 + K4) / 6);
    x(k+1) = x(k) + h;
end
v(1,1:end) = y(1:end);
v(2,1:end) = x(1:end);
v(3,1:end) = n;
v(4,1:end) = 0; %Переменная для подсчёта количества итераций
end

