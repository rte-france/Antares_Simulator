************************************************************************
file with basedata            : cn119_.bas
initial value random generator: 249153306
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  119
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       19        0       19
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1           5
   3        3          3           8  10  12
   4        3          3           6   7  17
   5        3          3           6  12  13
   6        3          3           9  14  16
   7        3          3           9  14  16
   8        3          2          13  17
   9        3          1          11
  10        3          3          11  13  17
  11        3          1          15
  12        3          1          14
  13        3          2          15  16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     2       3    0    0
         2     3       1    0    0
         3     6       0   10    0
  3      1     2       0    8    7
         2     3       7    0    0
         3     7       6    0    0
  4      1     4       0    6    0
         2     6       0    5    0
         3     9       0    2    3
  5      1     5       0    8    7
         2     8       0    7    6
         3     8       6    0    0
  6      1     2       6    0   10
         2     7       6    0    6
         3    10       0    8    6
  7      1     1       0    6    3
         2     4       0    3    0
         3     8       4    0    0
  8      1     1       0    9    0
         2     5       0    8    7
         3     6      10    0    5
  9      1     3       2    0    9
         2     6       0    2    9
         3     7       0    2    0
 10      1     1       0    7    7
         2     2       6    0    7
         3     7       0    6    0
 11      1     1       4    0    4
         2     9       3    0    4
         3     9       0    9    3
 12      1     5       0    6    3
         2     8       0    5    3
         3    10       0    4    0
 13      1     2       0    6    0
         2     3       8    0    0
         3     7       4    0    0
 14      1     5       6    0    9
         2     5       7    0    0
         3     5       0   10    0
 15      1     2       0    7    4
         2     5       7    0    0
         3     8       0    7    0
 16      1     1       5    0    7
         2     1       0    7    7
         3     2       0    4    7
 17      1     2       3    0    0
         2     8       0    7    0
         3    10       0    5    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   20   25   64
************************************************************************
