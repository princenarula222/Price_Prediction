function a = grad(theta,X,Y)
n=size(X,2);
m=size(Y,1);
p=X*theta';
h=p-Y;
h=repmat(h,1,n);
a=1/m*(sum(h.*X));