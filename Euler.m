function [v] = Euler(f, u0, x0, X, n) %y, x, n, iter
%Euler method for ordinary differential equations
%Метод Эйлера для обыкновенных дифференциальных уравнений
v = zeros(4,n+1); %Заполнение матрицы 4хn+1 нулями
h = (X - x0) / n; %Разбиение на отрезки
y(1:n+1) = 0;
y(1) = u0;
x(1:n+1) = 0;
x(1) = x0;
%Сам метод Эйлера
for k = 1:1:n 
    y(k+1) = y(k) + h * f(x(k), y(k));
    x(k+1) = x(k) + h;
end
%v = [y; x; n];
v(1,1:end) = y(1:end);
v(2,1:end) = x(1:end);
v(3,1:end) = n;
v(4,1:end) = 0; %Переменная для подсчёта количества итераций
end

