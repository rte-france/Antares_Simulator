************************************************************************
file with basedata            : cn124_.bas
initial value random generator: 1934083597
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  127
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20        7       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6  12  13
   3        3          2           5   6
   4        3          3           5  10  12
   5        3          3           7  11  16
   6        3          2           8  16
   7        3          1           9
   8        3          3          11  14  15
   9        3          2          13  14
  10        3          2          11  13
  11        3          1          17
  12        3          3          15  16  17
  13        3          1          15
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       4   10    3
         2     3       3    9    0
         3     5       3    8    0
  3      1     3       3    5    4
         2     6       2    5    0
         3     9       1    4    0
  4      1     3       5    8    5
         2     7       5    8    4
         3     9       5    5    0
  5      1     2       7    7    0
         2     2       5    7    7
         3     9       4    7    7
  6      1     3       4    7    0
         2     6       3    3    6
         3     6       3    4    0
  7      1     1       5    8    0
         2     5       5    7    3
         3     8       5    7    2
  8      1     1       6    9    6
         2     3       6    8    0
         3     5       5    6    0
  9      1     5      10    6    0
         2     8       8    5    0
         3    10       7    4    9
 10      1     5       7    8    4
         2     5       6   10    0
         3     8       6    7    0
 11      1     2       4    8    0
         2     6       3    5    5
         3    10       2    3    3
 12      1     3       6   10    0
         2     5       4    9    8
         3     6       3    7    8
 13      1     5       7    4    7
         2     6       7    3    0
         3    10       7    1    0
 14      1     2       9    4    3
         2     2      10    4    2
         3     6       5    4    0
 15      1     1       8    6    8
         2     5       7    5    0
         3     9       5    4    0
 16      1     5       5    4    7
         2     8       5    4    0
         3    10       5    3    3
 17      1     7       6    8    2
         2     7       7    7    2
         3     7       8    5    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   28   35   65
************************************************************************
