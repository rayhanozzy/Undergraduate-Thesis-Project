clear all
clc
%Parameter kurva eliptik
a=1
b=1
%Parameter pada Grup Z/pZ
p=31
%Titik
G=[21,4];
%Hitung G2 = 2*G
x1=G(1);
y1=G(2);
d=mod(2*y1,p);
[~,invd,~]=gcd(d,p);
n=mod(3*x1*x1 + a,p);
lambda=mod(n*invd,p);
x2=mod(lambda*lambda - 2*x1,p);
y2=mod(lambda*(x1-x2)-y1,p);
G2=[x2 y2]