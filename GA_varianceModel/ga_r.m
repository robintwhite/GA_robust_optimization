A = []; 
b = [];
Aeq = []; 
beq = [];
lb = [0];
ub = [1];
FitnessFunction = @objective; %Function evaluated at each point +- an interval
numberOfVariables = 1;
options = [];
[x,fval] = ga(FitnessFunction,numberOfVariables,A,b,Aeq,beq,lb,ub,options)
[y,yval] = ga(@myfun,numberOfVariables,A,b,Aeq,beq,lb,ub,options)

figure
subplot(2,1,1);
fplot(@objective,[lb,ub])
xlabel('x');
ylabel('y');
title('Variance penalty');

subplot(2,1,2);
hold on
ezplot(@myfun,[lb,ub])
g = -x*sin(3*pi*x)
plot(x,g,'ro')
plot(y,yval,'ko')
xlabel('x');
ylabel('fval');
title('');

hold off

