function y = objective(x)
a = 0;
b = 0.05;
q = 1;
    r = a + (b-a).*rand(100,1);
    v1 = -(x+r).*sin(3.*pi.*(x+r));
    v2 = -(x-r).*sin(3.*pi.*(x-r));
    v = [v1;v2];
   y = -x*sin(3*pi*x)/(var(v)^q); %Variance applied penalty objective

