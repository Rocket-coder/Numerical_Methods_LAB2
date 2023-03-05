function [maxim] = Compare(y2h, yh)
%COMPARE Summary of this function goes here
%   Detailed explanation goes here
z = y2h;
[m,n] = size(y2h);
for i = 1:1:n
    z(i) = yh(1+2*(i-1));
end
maxim = max(abs(y2h - z));
end

