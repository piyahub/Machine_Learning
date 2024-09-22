function R_square=R_Square_value_calcuate(Ypred,Yacut);
%actual
primary_diff=Yacut-Ypred;
primary_square=primary_diff.^2;
MSE_actual=sum(primary_square);
%baseline
Yavg=mean(Yacut);
diff=Yacut-Yavg;
square=diff.^2;
MSE_baseline=sum(square);

%R^2 value
R_square=1-(MSE_actual/MSE_baseline);
end