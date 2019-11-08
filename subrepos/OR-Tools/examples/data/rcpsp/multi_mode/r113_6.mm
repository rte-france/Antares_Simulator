************************************************************************
file with basedata            : cr113_.bas
initial value random generator: 940458115
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  141
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       26       15       26
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   7   8
   3        3          3           5   7  12
   4        3          2           5  12
   5        3          1           6
   6        3          2           9  14
   7        3          2          11  15
   8        3          3           9  11  12
   9        3          1          10
  10        3          2          13  16
  11        3          2          14  16
  12        3          3          13  14  16
  13        3          2          15  17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       4    6    0
         2     4       3    0    8
         3    10       2    0    5
  3      1     1       7    5    0
         2     2       7    2    0
         3     9       6    0    4
  4      1     4      10    0    6
         2     7       9    2    0
         3     7       7    0    4
  5      1     5       6    0    8
         2     6       4    0    6
         3     7       3    0    6
  6      1     9       6   10    0
         2    10       1    0    6
         3    10       6    0    4
  7      1     7       9   10    0
         2     8       5    0    4
         3    10       5    0    3
  8      1     1       5    6    0
         2     7       4    4    0
         3     7       4    0    7
  9      1     1       9    0    3
         2     6       9    7    0
         3     8       8    0    3
 10      1     1       3    7    0
         2     7       2    0    7
         3     7       2    5    0
 11      1     5       4    9    0
         2     5       3    0    8
         3     8       1    9    0
 12      1     3       8    0    7
         2     5       5    0    1
         3    10       3    4    0
 13      1     2       8    0    8
         2     7       8    0    2
         3     9       8    7    0
 14      1     2       6    5    0
         2     9       6    0    6
         3    10       5    0    1
 15      1     4      10    0    8
         2     6       9    0    6
         3    10       8    0    4
 16      1     1       8    0    8
         2     5       7    0    6
         3     9       2    8    0
 17      1     3       7    9    0
         2     3       8    0    8
         3    10       5    0    7
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   12   48   58
************************************************************************
