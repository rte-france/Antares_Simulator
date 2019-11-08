************************************************************************
file with basedata            : cr118_.bas
initial value random generator: 886379803
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  140
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21       10       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   9  16
   3        3          1           5
   4        3          3           7   9  16
   5        3          3           9  14  16
   6        3          3           8  10  12
   7        3          3          12  13  17
   8        3          2          11  13
   9        3          3          10  11  12
  10        3          1          17
  11        3          2          15  17
  12        3          1          15
  13        3          1          14
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       8    6    0
         2     4       5    0    3
         3    10       0    4    0
  3      1     6       0    0    2
         2     6       6    8    0
         3     8       0    7    0
  4      1     1       0    0    5
         2     8       3    0    3
         3     9       0    4    0
  5      1     4       0    0    5
         2     5       0    5    0
         3     8       0    0    2
  6      1     1       8    5    0
         2     8       0    0    9
         3    10       0    4    0
  7      1    10       7    0    7
         2    10       3    1    0
         3    10       8    0    6
  8      1     3       6    0    2
         2     4       0    9    0
         3     9       0    0    2
  9      1     2       0    0    5
         2     6       9   10    0
         3     7       9    6    0
 10      1     2       0    5    0
         2     8       0    3    0
         3    10       0    0    6
 11      1     7       5    5    0
         2     7       0    0    5
         3    10       0    5    0
 12      1     4       5    7    0
         2     7       5    0    8
         3     8       0    6    0
 13      1     7       8    4    0
         2     8       6    0    6
         3    10       0    0    4
 14      1     2       5    0    5
         2     5       0    6    0
         3     6       4    0    5
 15      1     1      10    0    4
         2     8       8    0    1
         3     8       0    6    0
 16      1     6       8    4    0
         2     8       0    0    5
         3     9       7    0    2
 17      1     2      10    6    0
         2     5       9    0    4
         3     8       0    5    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   14   68   61
************************************************************************
