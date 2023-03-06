%u(x) = (1/2) * (x - (1/x))
syms x;
syms u;
%f(x, u(x)) = (1+xu)/x^2
f=@(x, u)((1 + x * u)/ x^2);
x0=1;
X=2;
u0=0;



e=10^(-4);
%------------------------------------------------
%Метод Эйлера (1 порядок)
%ResEuler = RungeRule(f, u0, x0, X, e, @Euler, 1);
%transpose(ResEuler(1,1:end));
%ResEuler(3);
%temp = zeros(2,ResEuler(3)+1);
%temp(1,1:end) = ResEuler(2,1:end);
%for i=1:ResEuler(3)+1
    %temp(2,i) = (1/2)*(temp(1,i)-(1/temp(1,i)));
%end

%plot(ResEuler(2,1:end), ResEuler(1,1:end))
%x = temp(1,1:end);
%y1 = ResEuler(1,1:end);
%y2 = temp(2,1:end);
%plot(temp(1,1:end), temp(2,1:end));
%figure
%plot(x,y1,'--',x,y2, ':');
%------------------------------------------------
%Метод Эйлера-Коши (2 порядок)
%ResEulerCuachy = RungeRule(f, u0, x0, X, e, @EulerCuachy, 2);
%temp = zeros(2,ResEulerCuachy(3)+1);
%temp(1,1:end) = ResEulerCuachy(2,1:end);
%for i=1:ResEulerCuachy(3)+1
%    temp(2,i) = (1/2)*(temp(1,i)-(1/temp(1,i)));
%end
%x = temp(1,1:end);
%y1 = ResEulerCuachy(1,1:end);
%y2 = temp(2,1:end);

%figure
%plot(x,y1,'--',x,y2, ':');
%------------------------------------------------
%Метод Рунге-Кута (4 порядок)
ResKuta = RungeRule(f, u0, x0, X, e, @RungeKuta, 4);
temp = zeros(2,ResKuta(3)+1);
temp(1,1:end) = ResKuta(2,1:end);
for i=1:ResKuta(3)+1
    temp(2,i) = (1/2)*(temp(1,i)-(1/temp(1,i)));
end
x = temp(1,1:end);
y1 = ResKuta(1,1:end);
y2 = temp(2,1:end);

figure
plot(x,y1,'--',x,y2, ':');
%------------------------------------------------
