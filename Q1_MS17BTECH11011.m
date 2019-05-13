function t=mytensor(u,v)

%this will give 5*5 matrix

u=[1 ;2 ;3 ;4 ;5];    % 5*1 vector

r=[2 ;3 ;4 ;5 ;5 ];     % 5*1 vector

v=r';

A=u*v;

disp('5*5 matrix is :')
disp(A)


%this will give 6*4 matrix


q=[1 ;2 ;3 ;4 ;5;3];   % 6*1 vector

w=[2 ;3 ;4 ;5 ];     %4*1 vector

e=w';

B=q*e;

disp('6*4 matrix is ')
disp(B)

end