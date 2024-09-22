clear ; close all; clc

data=load("hw1_data1.txt");

Ypred=data(:,1);
Yacut=data(:,2);

m=length(Ypred);
n=2;

% Mean Absolute Error
MAE=MeanAbsoluteError(Ypred,Yacut)

%Absolute Mean Square Error
MSE=MeanSquareErrorCalculate(Ypred,Yacut)

%root mean square error
RMSE=sqrt(MSE)

%root mean log square error
RMLSE=RootMeanLogSquareError(Ypred,Yacut)

%R^2 Value
R_Square_value=R_Square_value_calcuate(Ypred,Yacut)

%Adjusted R^2 Value
Adjusted_R_Square_Value= 1 - (1-R_Square_value)*((m-1)/(m-(n+1)))









