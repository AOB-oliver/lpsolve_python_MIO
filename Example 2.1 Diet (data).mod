# Diet problem

param n; # Alimentos

param m; # Requerimientos



set ALIMENTOS := 1..n;
set REQUER := 1..m 


param coste{ALIMENTOS};
param req_min{REQUER};
param req_max{REQUER};



param contenidos{REQUER, ALIMENTOS};


var cantidad{i in ALIMENTOS} >= 0


minimize coste_dieta:
      sum{i in ALIMENTOS}coste[i]*cantidad[i] >= req_min[j];

subject to requermin{j in REQUER: req_min[j] > 0}:
      sum{i in ALIMENTOS}contenido[j, i]*cantidad[i] >= req_min[j];

subject to requermax{j in REQUER: req_max[j] > 0}:
      sum{i in ALIMENTOS}contenidos[j, i]*cantidad[i] <= req_max[j];


	
data;

param n:= 8;
param m:=11;

param coste:=
1      19
2      56
3      90
4      82
5      51
6      53
7      37
8      32;

param req_max:=
1    2200
2     65
3    300
4    2400 #note in grams (contenidos in miligrams)
5    0
6    0
7    0
8    0
9    0
10   0
11   0;

param req_min:=
1    1800
2    0
3    0
4    0
5    300
6    25
7    50
8    100
9    100
10   100
11   100;

param contenido: 1    2    3    4    5    6    7    8:=
      1        300   60  220  259  110  132   55  152
      2          1    0   13 16.3  2.5    0 0.22  9.8
      3          0    0    5   89   10    0    0    0
      4          1  650  790   95  120    5  1.1 168.4
      5         63   12   19   20   12 33.4 14.6   15
      6          3    3    2    0    0    0  2.5  1.3
      7         11    2    5  26.1   9  0.5  0.3    2
      8          0    8    2    1   10    2    1    0
      9          0   30    2    0    0   62    8   15
     10          2    2    2    1   30    0    1    1
     11         20   15    8   17    0    2    1    3;

