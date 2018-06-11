function J =jval(theta,X,Y)
m=size(X,1);
predictions=X*theta';
sqr=(predictions-Y).^2;
J=(1/(2*m))*sum(sqr);