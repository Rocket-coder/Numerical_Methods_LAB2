function [Res] = RungeRule(f,u0,x0,X,e,Method,p)
%RUNGERULE Summary of this function goes here
%   Detailed explanation goes here
n = 2;
temp = Method(f, u0, x0, X, n);
y2h = temp(1,1:end);
n = 2 * n;
Res = Method(f, u0, x0, X, n);
yh = Res(1, 1:end);
l = 1;
while (Compare(y2h, yh))/(2^p - 1)>=e
    l = l + 1;
    n = 2 * n;
    y2h = yh;
    Res = Method(f, u0, x0, X, n);
    Res(4,1:end) = l;
    yh = Res(1, 1:end);
end
end

