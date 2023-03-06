syms x;
syms u; 
f=@(x, u)((1 + x * u)/ x^2);
x0=1;
X=2;
u0=0;

%Answer = Euler(f,u0,x0,X,1)

e=10^(-4);
ResEuler = RungeRule(f, u0, x0, X, e, @Euler, 1);
transpose(ResEuler(1,1:end))
ResEuler(3)
ResEuler(4)
