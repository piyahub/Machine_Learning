function RMLSE=RootMeanLogSquareError(Ypred,Yacut)

ypred=log(Ypred+1);
yacut=log(Yacut+1);

diff=ypred-yacut;
square=diff.^2;
x=mean(square);
RMLSE=sqrt(x);

end