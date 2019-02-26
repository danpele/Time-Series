*Sum of uncorrelated white noises;

data wn;
do t=1 to 1000;
wn1=10+20*rannor(0);
wn2=500+200*rannor(1);
wn=0.7*wn1+0.3*wn2;
output;
end;
run;

proc sgplot data=wn;
series x=t y=wn;
series x=t y=wn1;
series x=t y=wn2;
run;
quit;

proc arima data=wn;
identify var=wn;
identify var=wn1;
identify var=wn2;

run;
quit;
