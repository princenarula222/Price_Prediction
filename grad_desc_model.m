clear all
epsilon=1000;
alpha=0.0001;

load featureX.dat;
load priceY.dat;
X=featureX;
nr=size(X,1);
t=ones(nr,1);
X=[t X];
nc=size(X,2);
theta=zeros(1,nc);
Y=priceY;
temp=jval(theta,X,Y);

while epsilon>0.000001
  a=grad(theta,X,Y);
  theta=theta-alpha.*a;
  b=jval(theta,X,Y);
  if(b>temp)
   epsilon=b-temp;
  else
   epsilon=temp-b;
  end
  temp=b;
end; 

theta
y=X*theta';

z=X(:,2);
plot(z,y,'b');
title('Univariate linear regression');
xlabel('Feature');
ylabel('Price');
grid on;
hold on;
scatter(z,Y,25,'r','filled');
legend('Predicted values - training','True values - training');

load testX.dat;
load testY.dat;
X=testX;
nr=size(X,1);
t=ones(nr,1);
X=[t X];
Y=testY;
test_predict=X*theta'
disp('squared sum loss on test set : ')
jval(theta,X,Y)