library(energy)

x = runif(50)
y = rnorm(50)
z = x^2-2*y

dxy = dcov(x,y)
dyz = dcov(y,z)
dxz = dcov(x,z)
dxx = dcov(x,x)
dyy = dcov(y,y)
dzz = dcov(z,z)

mat = matrix(c(dxx,dxy,dxz,dxy,dyy,dyz,dxz,dyz,dzz), nrow = 3, ncol = 3)

mat
det(mat)
eigen(mat)
solve(mat)