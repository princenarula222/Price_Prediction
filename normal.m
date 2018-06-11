function theta = normal(X,Y)

n=size(X,1);
X=[ones(n,1) X];
theta=pinv((X'*X))*X'*Y;