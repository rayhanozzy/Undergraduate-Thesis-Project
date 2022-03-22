clear all
clc
%Parameter kurva eliptik
a=1
b=1
%Parameter pada Grup Z/pZ
p=31
%Titik
G1=[1,25];
G2=[1,-25];
%Hitung G3 = G1 + G2
x1=G1(1);
y1=G1(2);
x2=G2(1);
y2=G2(2);
d=mod(x2-x1,p);
[~,invd,~]=gcd(d,p);
n=mod(y2-y1,p);
lambda=mod(n*invd,p);
x3=mod(lambda*lambda - x1 - x2,p);
y3=mod(lambda*(x1-x3)-y1,p);
G3=[x3 y3]