function MAE=MeanAbsoluteError(Ypred,Yacut)

x=abs(Yacut-Ypred);
MAE=mean(x);

end
