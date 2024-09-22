clear;close all;clc;

data=load("hw1_data1.txt");

sales=data(:,1);
revenue=data(:,2);

slope=0.0528;
intercept=3.35;

%Ypred
Ypred=slope*sales+intercept;

%RSS
diff=Ypred-revenue;
RSS=sum(diff.^2)

%SST
Yavg=mean(revenue);
SST_diff=revenue-Yavg;
SST=sum(SST_diff.^2)

%R_Square
R_Square_value=1-(RSS/SST)