[x,y] = meshgrid(linspace(-5,5,100));
contour(x,y,y.^2-x.^3-x-3,'LevelList',0)
title('y^2 = x^3 + x + 3')
