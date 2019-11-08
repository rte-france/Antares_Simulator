************************************************************************
file with basedata            : md225_.bas
initial value random generator: 13502877
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  111
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       24       11       24
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8   9  13
   3        3          3           5   7   9
   4        3          3           6  12  13
   5        3          3          11  14  17
   6        3          3           7   9  16
   7        3          1           8
   8        3          1          10
   9        3          1          10
  10        3          2          15  17
  11        3          2          13  16
  12        3          2          14  17
  13        3          1          15
  14        3          2          15  16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       6    0    8    6
         2     8       0    7    8    6
         3     9       3    0    8    4
  3      1     4       2    0    5    9
         2     9       0    5    4    7
         3    10       0    4    4    4
  4      1     6       0    7    5    8
         2     6       0    8    5    7
         3     7       2    0    2    6
  5      1     5       0    3    7    9
         2     6       0    2    5    5
         3     8       0    2    2    2
  6      1     5       6    0    9   10
         2     5       0    2    9   10
         3     6       7    0    6   10
  7      1     2       0    7    8    6
         2     4       4    0    7    5
         3     4       0    6    7    5
  8      1     4       4    0    4    5
         2     5       0    3    4    5
         3     5       4    0    4    4
  9      1     4       6    0    3    8
         2     8       0    1    3    6
         3     8       6    0    3    6
 10      1     2       7    0    6    4
         2     7       0    4    4    1
         3     7       6    0    4    2
 11      1     2       0    7    9    7
         2     2       6    0    9    6
         3     6       0    8    8    4
 12      1     2       5    0    5    7
         2     6       2    0    5    6
         3     6       5    0    4    5
 13      1     3       0    9    7    3
         2     3       8    0    8    3
         3    10       8    0    7    2
 14      1     3       0    5    9    9
         2     4       8    0    9    9
         3     5       7    0    9    8
 15      1     5       0    5    8    4
         2     6       7    0    8    3
         3     7       6    0    8    2
 16      1     1       6    0    7    8
         2     5       0   10    7    7
         3     6       0    7    6    5
 17      1     1       6    0    9    8
         2     2       5    0    7    7
         3     7       0    9    3    6
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
    8    7   91   83
************************************************************************
