clear all
clc

image = fix(rand(10,10)*255);
[h w] = size(image);
mask = [1 2 1;
        2 3 2;
        1 2 1];
temp = image;
hasil = zeros(10,10);
hasil(1,:) = image(1,:);
hasil(w,:) = image(w,:);
hasil(:,1) = image(:,1);
hasil(:,h) = image(:,h);
for j = 1:h-2
    for k = 1:w-2
cek1 = image(j:j+2,k:k+2);
dum = mask.*cek1;
cek2 = sum(sum(dum));
hasil(j+1,k+1) = cek2;
    end
end
image
mask
hasil