clear all;
clc;
load featureX.dat;
load priceY.dat;

X=featureX;
Y=priceY;

theta = normal(X,Y)
nr=size(X,1);
t=ones(nr,1);
X=[t X];
y=X*theta;

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
test_predict=X*theta

disp('squared sum loss on test set : ')
jval(theta',X,Y)