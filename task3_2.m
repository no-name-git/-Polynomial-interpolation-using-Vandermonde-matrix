p=[1 -124 1];
z=roots(p);
a=1;
b=-124;
c=1;
x1=(-b+sqrt(b^2-4*a*c))/2*a;
x2=(-b-sqrt(b^2-4*a*c))/2*a;
x=[x1;x2];
absolute_error1=abs(x-z);
relative_error_x1=abs(x1-z(1))/abs(z(1));
relative_error_x2=abs(x2-z(2))/abs(z(2));
relative_error1=[relative_error_x1;relative_error_x2];
residual1=abs(polyval(p,x));

newx1=(-b-sign(b)*sqrt(b^2-4*a*c))/2*a;
newx2=c/(a*newx1);
newx=[newx1;newx2];
absolute_error2=abs(newx-z);
relative_error_newx1=abs(newx1-z(1))/abs(z(1));
relative_error_newx2=abs(newx2-z(2))/abs(z(2));
relative_error2=[relative_error_newx1;relative_error_newx2];
risidual2=abs(polyval(p,newx));