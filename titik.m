function mapping = titik(a,b,n);
x=0;
x=0;
y=0;
i=1;
n=1,2,3,...;
while y<=n-1
    z(i)=mod(y^2,n);
    yy(i)=y;
    y=y+1;
    i=i+1;
end
i=1;
w=1;
while x<=n-1
    nilaix(i)=mod(x^3+a*x+b,n);
    xx(i)=x;
    i=i+1;
    x=x+1;
end
idx=1;
id=1;
for i=1:length(nilaix)
    if(any(nilaix(i)==z)==1)
        cari(:,idx)=find(nilaix(i)==z);
        [pan leb]=size(cari);
        for j=1:pan
            if(yy(cari(j,idx)==0))
                j=2;
              titikxy(id,:)=[xx(i) yy(cari(j,idx))];
            else
              titikxy(id,:)=[xx(i) yy(cari(j,idx))];
            end
        id=id+1;
        end
        idx=idx+1;
    end
end
mapping=unique(titikxy,'rows');
map_0=[Inf Inf];
mapping=[map_0;mapping];