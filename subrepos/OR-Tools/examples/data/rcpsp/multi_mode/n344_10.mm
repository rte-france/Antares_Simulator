************************************************************************
file with basedata            : cn344_.bas
initial value random generator: 1918912107
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  126
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  3   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21       13       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6  14
   3        3          3           6  11  16
   4        3          3           7  11  15
   5        3          2           8  11
   6        3          2          12  17
   7        3          3           9  10  14
   8        3          3           9  10  12
   9        3          2          13  16
  10        3          2          13  16
  11        3          1          13
  12        3          1          15
  13        3          1          17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2  N 3
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     3       7    0    8   10    7
         2     4       0    8    7    9    6
         3     5       7    0    6    9    5
  3      1     2       9    0    7    6    8
         2     5       8    0    6    5    6
         3    10       5    0    6    2    2
  4      1     1       0    8    5    5    7
         2     8       4    0    5    2    7
         3     8       0    8    4    2    7
  5      1     6       0    7   10    4    8
         2     9      10    0    9    1    8
         3     9       0    7    9    1    8
  6      1     6       0    5   10    7    8
         2     8       7    0    9    6    5
         3     9       4    0    6    3    4
  7      1     4       0    9    7    7    5
         2     8       0    9    4    6    5
         3    10       0    9    4    6    4
  8      1     1       7    0    6    7    8
         2     1       0    8    7    6    7
         3     3       0    4    5    4    4
  9      1     3       0   10    8    8    9
         2     4       0    9    8    7    7
         3     5       9    0    5    6    5
 10      1     5       0    1    2    2   10
         2     5       0    3    3    2    8
         3    10       7    0    2    1    7
 11      1     1       2    0    8    3    9
         2     7       1    0    5    2    6
         3     8       1    0    3    1    5
 12      1     2       9    0   10    8    6
         2    10       0   10    6    6    5
         3    10       9    0    6    7    5
 13      1     2       0    8    6    8    9
         2     6       8    0    5    5    8
         3     8       5    0    5    3    6
 14      1     2       0    7    7    8   10
         2     6       0    7    7    8    8
         3     8       3    0    7    5    5
 15      1     4       6    0    7    9    7
         2     6       0    3    7    5    3
         3    10       0    2    6    3    3
 16      1     1      10    0    9    7    8
         2     4       4    0    6    6    6
         3     4       0    5    7    5    4
 17      1     4       0    7    7    5    7
         2     5       7    0    6    4    5
         3     9       1    0    4    4    5
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2  N 3
   28   23  102   83  103
************************************************************************
