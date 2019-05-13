

%plot of f(x) in interval (0,1)
x=linspace(0,1);
y=3.5.*x.*(1-x)+[x.*log(x)+(1-x).*log(1-x)];
plot(x,y);


%for roots of f'(x)


%for 1 st root

n=30;

x0=0.01;
tol=10^-15;
f=@(x) log(x) - log(1 - x) - 7*x + 7/2;
f1=@(x)1/x - 1/(x - 1) - 7;
x=x0;
    for i=1:n
            x=x-f(x)/f1(x);
    end
    xn=x;
    a=f(xn);
    r=abs(a-0);
    if r>tol
        warning('Desired accuracy not achieved.')
    end

fprintf('The 1 st root is %f.\n\n',xn);


%for 2 nd root
n=30;

x0=0.6;
tol=10^-15;
f=@(x) log(x) - log(1 - x) - 7*x + 7/2;
f1=@(x)1/x - 1/(x - 1) - 7;
x=x0;
    for i=1:n
            x=x-f(x)/f1(x);
    end
    xn=x;
    a=f(xn);
    r=abs(a-0);
    if r>tol
        warning('Desired accuracy not achieved.')
    end

fprintf('The 2 st root is %f.\n\n',xn);



%for 3 rd root
n=30;

x0=0.95;
tol=10^-15;
f=@(x) log(x) - log(1 - x) - 7*x + 7/2;
f1=@(x)1/x - 1/(x - 1) - 7;
x=x0;
    for i=1:n
            x=x-f(x)/f1(x);
    end
    xn=x;
    a=f(xn);
    r=abs(a-0);
    if r>tol
        warning('Desired accuracy not achieved.')
    end

fprintf('The 3 st root is %f.\n\n',xn);


%from th graph of f'(x) we can approximately find the roots and then taking
%guess values respectively




