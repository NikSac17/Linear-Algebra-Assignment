

A=[1 1/2 1/4 1/8; 0 1 1/3 1/9; 0 0 1 1/4;0 0 0 1];
b=[1; 0; 0;0];
[m,n]=size(A);
Ab=[A,b];


a=2;
c=1;
for j=c:m-1
    for i=a:m
        Ab(i,:)=Ab(i,:) - (Ab(i,j)/Ab(j,j))*Ab(j,:);
    end
    a=a+1;
    c=c+1;
end

z=zeros(m,1);
z(m) = Ab(m,m+1)/Ab(m,m);

for k=m-1:-1:1 %backward substitution 
    z(k) = (Ab(k,m+1) - Ab(k,k+1:m)*z(k+1:m))/Ab(k,k);
end



%%

A=[1 1/2 1/4 1/8; 0 1 1/3 1/9; 0 0 1 1/4;0 0 0 1];
r=[0; 1; 0; 0];

[m,n]=size(A);
Ar=[A,r];


a=2;
c=1;
for j=c:m-1
    for i=a:m
        Ar(i,:)=Ar(i,:) - (Ar(i,j)/Ar(j,j))*Ar(j,:);
    end
    a=a+1;
    c=c+1;
end

f=zeros(m,1);
f(m) = Ar(m,m+1)/Ar(m,m);

for k=m-1:-1:1 %backward substitution 
    f(k) = (Ar(k,m+1) - Ar(k,k+1:m)*f(k+1:m))/Ar(k,k);
end





%%

A=[1 1/2 1/4 1/8; 0 1 1/3 1/9; 0 0 1 1/4;0 0 0 1];
t=[0; 0; 1; 0];

[m,n]=size(A);
At=[A,t];


a=2;
c=1;
for j=c:m-1
    for i=a:m
        At(i,:)=At(i,:) - (At(i,j)/At(j,j))*At(j,:);
    end
    a=a+1;
    c=c+1;
end

g=zeros(m,1);
g(m) = At(m,m+1)/At(m,m);

for k=m-1:-1:1 %backward substitution 
    g(k) = (At(k,m+1) - At(k,k+1:m)*g(k+1:m))/At(k,k);
end



%%

A=[1 1/2 1/4 1/8; 0 1 1/3 1/9; 0 0 1 1/4;0 0 0 1];
w=[0; 0; 0; 1];

[m,n]=size(A);
Aw=[A,w];


a=2;
c=1;
for j=c:m-1
    for i=a:m
        Aw(i,:)=Aw(i,:) - (Aw(i,j)/Aw(j,j))*Aw(j,:);
    end
    a=a+1;
    c=c+1;
end

h=zeros(m,1);
h(m) = Aw(m,m+1)/Aw(m,m);

for k=m-1:-1:1 %backward substitution 
    h(k) = (Aw(k,m+1) - Aw(k,k+1:m)*h(k+1:m))/Aw(k,k);
end
%%




E=[z f g h];
disp('Inverse')
disp(E)


%% verifying answer by matlab inbuilt operator

X=inv(A)*eye(4);
disp('Inverse via matlab inbuild operator')
disp(X)









