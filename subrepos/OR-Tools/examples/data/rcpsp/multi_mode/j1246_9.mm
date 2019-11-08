************************************************************************
file with basedata            : md110_.bas
initial value random generator: 49811171
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  95
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       14       10       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   7   8
   3        3          3           5   7  10
   4        3          3           6   7  13
   5        3          2           6  11
   6        3          1          12
   7        3          1          11
   8        3          2           9  10
   9        3          3          11  12  13
  10        3          2          12  13
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       9    6    5    9
         2     5       8   10    5    8
         3     7       8    1    5    8
  3      1     4       6    6    8   10
         2     8       5    6    7   10
         3    10       2    5    5    9
  4      1     7       8    4    9    4
         2     8       8    4    9    3
         3    10       8    1    8    3
  5      1     1       8   10    5    6
         2     2       7    6    3    6
         3     3       7    4    2    5
  6      1     4       6    5    1    7
         2     5       5    5    1    5
         3     7       4    5    1    4
  7      1     1       3    7    5    6
         2     3       3    7    3    6
         3     7       2    7    2    5
  8      1     1       6    5    9   10
         2     9       6    4    9   10
         3    10       5    3    7    9
  9      1     1      10    7    9    7
         2     2       7    5    8    7
         3     9       6    2    8    2
 10      1     1       9    8    6    2
         2     2       8    7    6    1
         3     4       6    6    4    1
 11      1     2       4    2    9   10
         2     4       4    2    6    9
         3    10       4    1    5    9
 12      1     1       7   10    7    3
         2     2       5    8    6    3
         3     8       3    7    5    2
 13      1     7       6    8    7    9
         2     7       5    8    9    8
         3    10       3    6    4    8
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   18   14   69   74
************************************************************************
