************************************************************************
file with basedata            : c1531_.bas
initial value random generator: 24997
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  138
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18       13       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1          17
   3        3          3           5  13  16
   4        3          3           7   8  13
   5        3          2           6   8
   6        3          2           9  10
   7        3          1          11
   8        3          1          17
   9        3          2          12  15
  10        3          1          14
  11        3          1          16
  12        3          1          14
  13        3          2          14  15
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       6    7    6    0
         2     6       3    2    0    5
         3     6       2    4    4    0
  3      1     2       7    6    0    7
         2     7       4    6    0    7
         3     9       1    4    0    7
  4      1     5       9    9    0    8
         2     8       9    9    6    0
         3    10       9    8    0    7
  5      1     3       8    4    9    0
         2     9       6    3    0    3
         3     9       8    3    0    2
  6      1     2       4    5    5    0
         2     7       4    2    5    0
         3     7       3    1    0    4
  7      1     1       7    4    8    0
         2     7       4    3    0    8
         3     8       2    3    6    0
  8      1     5       9    9    0    5
         2     6       5    7    5    0
         3     7       3    5    0    4
  9      1     1       8    5    0    7
         2     9       6    5    8    0
         3    10       6    3    0    7
 10      1     3       3    6    0    4
         2     4       2    6    4    0
         3     9       2    5    2    0
 11      1     1       6    8    0    4
         2     7       5    8    0    2
         3    10       3    8    7    0
 12      1     1       5    6    0    6
         2    10       5    5    5    0
         3    10       3    3    0    5
 13      1     7       5    5    0    1
         2     9       5    4    9    0
         3     9       4    5    0    1
 14      1     2       9    2    0    5
         2     5       9    2    0    4
         3     8       9    1    0    3
 15      1     6       9    5    0    5
         2     7       9    5    5    0
         3    10       7    5    0    4
 16      1     1       8    6   10    0
         2     9       7    5    0    8
         3    10       5    4    0    4
 17      1     1       4    7    0    4
         2     3       2    6    0    4
         3     6       2    6    8    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   27   25   95   84
************************************************************************
