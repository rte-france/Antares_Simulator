************************************************************************
file with basedata            : cr142_.bas
initial value random generator: 117033791
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  124
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20        5       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   9  11
   3        3          3           5   9  14
   4        3          3           6   7  11
   5        3          3           7   8  10
   6        3          3           9  12  15
   7        3          1          17
   8        3          2          15  16
   9        3          1          17
  10        3          1          12
  11        3          3          12  14  15
  12        3          2          13  17
  13        3          1          16
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       2   10    8
         2     4       0   10    7
         3     6       2    9    4
  3      1     2       0    7    9
         2     2       0    8    8
         3     7       0    1    3
  4      1     8       5    6    3
         2     8       0    7    3
         3    10       0    2    3
  5      1     1       4    4   10
         2     3       3    3    5
         3     5       0    3    3
  6      1     1       0   10    8
         2     3       0    8    7
         3     5       0    6    2
  7      1     2       0    9    4
         2     5       2    6    3
         3     8       2    3    3
  8      1     1       0    8    6
         2     9       7    7    5
         3    10       0    6    2
  9      1     8       6    9    5
         2     9       0    7    5
         3    10       0    4    4
 10      1     4       2    2    6
         2     7       2    1    5
         3     9       0    1    5
 11      1     4       6    7    6
         2     5       0    5    6
         3     8       0    4    5
 12      1     2       7    7    8
         2     3       7    6    1
         3     3       0    7    1
 13      1     4       0    8    7
         2     6       2    8    6
         3     7       1    7    4
 14      1     3       0    8    7
         2     8       0    6    6
         3     9       0    5    3
 15      1     1       7    8    1
         2     9       5    7    1
         3    10       4    7    1
 16      1     2       9    6    7
         2     6       8    5    6
         3     8       6    3    4
 17      1     2       0    5    7
         2     7       5    2    5
         3     9       2    1    5
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   14   92   77
************************************************************************
