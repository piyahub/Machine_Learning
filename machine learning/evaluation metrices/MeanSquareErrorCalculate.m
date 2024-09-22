function MSE=MeanSquareErrorCalculate(Ypred,Yacut)

x=Ypred-Yacut;
y=x.^2;
MSE=mean(y);

end