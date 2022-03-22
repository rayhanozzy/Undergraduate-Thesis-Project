function p3 = addell(p1,p2,a,b,n);
% This function add points on the elliptic curve
 y^2 = x^3 + ax + b mod n
% The points are represented by
 p1(1) = x1 p1(2) = y1
 p2(1) = x2 p2(2) = y2
if (any(p1==Inf)),
p3=p2;
return;
end;
if (any(p2==Inf)),
p3=p1;
return;
end;
x1=p1(1);
x2=p2(1);
y1=p1(2);
y2=p2(2);
z1=1; % this will store the gcd incase the addition produced a factor of n
if ( (x1==x2) & (y1==y2) & (y1==0)), % an infinity case
p3(1)=inf; p3(2)=inf;
return;
end;
if ( (x1==x2) & (y1 ~= y2)), % an infinity case
p3(1)=inf; p3(2)=inf;
return;
end;
if (all(p1==p2) & (gcd(y1,n)~=1) & (gcd(y1,n)~=n)),
z1=gcd(y1,n);
p3=[];
disp(['Elliptic Curve addition produced a factor of n, factor = ',num2str(z1)]);
return;
end;
if all(p1==p2),
temp=mod(2*y1,n);
if temp==0,
p3(1)=Inf;
p3(2)=Inf;
return;
end;
den=powermod(2*y1, -1, n);
num=mod(x1*x1,n);
num=mod(mod(3*num,n) + a,n);
m=mod(num*den,n);
temp=mod(m*m,n);
x3=mod(temp-x1-x2, n);
temp=x1-x3;
y3=mod(m*temp,n);
y3=mod(y3-y1,n);
else % case p1 ~= p2
if (gcd(x2-x1,n) ~= 1),
z1=gcd(x2-x1,n);
p3=[];
disp(['Elliptic Curve addition produced a factor of n, factor= ',num2str(z1)]);
return;
end; % end if gcd
temp=mod(x2 - x1,n);
if (mod(n,temp)==0), % Infinity case
p3(1)=Inf;
p3(2)=Inf;
return;
end;
den=powermod(temp,-1,n);
num=y2-y1;
num=mod(y2-y1,n);
m=mod(num*den,n);
temp=mod(m*m,n);
x3=mod(temp-x1-x2, n);
temp=x1-x3;
y3=mod(m*temp,n);
y3=mod(y3-y1,n);
end;
p3(1)=x3;
p3(2)=y3;