proc format;
value gfmt 1 = "试验组" 2 = "对照组";
DATA example3_1;
INPUT group weight;
format group gfmt.;
label weight = "体重（kg）";
CARDS;
1 81.0
1 60.0
1 69.0
1 70.0
1 60.0
1 61.0
1 60.5
1 70.4
1 85.0
1 65.0
1 68.0
1 67.0
1 73.2
1 69.7
1 63.0
1 62.0
1 70.0
1 70.0
1 68.0
1 58.0
1 70.0
1 58.0
1 80.0
1 67.0
2 55.0
2 80.0
2 65.0
2 72.0
2 85.0
2 88.0
2 65.0
2 74.0
2 68.0
2 86.0
2 75.0
2 65.0
2 74.5
2 70.0
2 70.0
2 79.0
2 82.0
2 76.0
2 70.0
2 65.0
2 65.0
2 75.0
2 65.0
2 51.0
;
PROC MEANS n mean std median q1 q3 maxdec = 2 fw = 8 nonobs;
CLASS group;
VAR weight;
RUN;
PROC UNIVARIATE normal plots;
CLASS group;
VAR weight;
RUN;
proc sgplot data = example3_1;
vbox weight/category = group;
xaxis valueattrs = (size = 12) labelattrs = (size = 12);
yaxis valueattrs = (size = 12) labelattrs = (size = 12);
run;
proc sgplot data = example3_1;
vbar group/response = weight stat = mean limitstat = stddev barwidth = 0.5 nofill;
xaxis valueattrs = (size = 12) labelattrs = (size = 12);
yaxis valueattrs = (size = 12) labelattrs = (size = 12);
run;
