*This program generates a white noise and checks its properties;

data wn;
do t=1 to 1000;
wn=rannor(0);
output;
end;
run;

proc sgplot data=wn;
series x=t y=wn;
run;

proc arima data=wn;
identify var=wn;
run;