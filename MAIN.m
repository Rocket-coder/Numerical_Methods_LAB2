syms u;
syms x;
f(x, u) = (1 - u + log(x)) / x;
x0=1;
X=2;
u0=0;
e=10^(-2);
ResEuler = RungeRule(f, u0, x0, X, e, @Euler, 1);
transpose(ResEuler(1,1:end))
ResEuler(3)
ResEuler(4)
