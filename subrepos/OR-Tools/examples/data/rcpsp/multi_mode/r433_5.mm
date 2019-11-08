************************************************************************
file with basedata            : cr433_.bas
initial value random generator: 1013673393
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  129
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21       11       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           6   7
   3        3          3           5   8  14
   4        3          3          10  12  14
   5        3          2          10  11
   6        3          2           8  10
   7        3          3           9  12  14
   8        3          2           9  13
   9        3          3          15  16  17
  10        3          1          16
  11        3          1          13
  12        3          1          13
  13        3          3          15  16  17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     3       0   10    0    5    5    9
         2     6       3    0    4    3    3    7
         3    10       0    5    0    0    2    5
  3      1     3       0    0   10    0    4    4
         2     6       0    6    7    0    3    3
         3     9       0    0    4    6    3    3
  4      1     3       7    2    3    0    7    9
         2     4       0    2    0    7    5    8
         3     6       6    1    0    6    5    4
  5      1     3       0    0    0    8    6    7
         2     6       8    9    8    0    5    7
         3     8       0    5    8    3    3    6
  6      1     6       0    0    0    4    8    4
         2     9       9    0    0    3    8    3
         3    10       0    0    0    2    7    1
  7      1     1       8    0    0    6    7    5
         2     3       0    3    5    0    5    5
         3     6       4    0    0    2    4    4
  8      1     1       0    3    9    6    6    9
         2     6       0    0    7    3    5    7
         3     7       0    0    4    0    4    6
  9      1     7       8    0    0    0    9    3
         2     7       0    8    0    0    9    3
         3     8       0    7    0    0    8    1
 10      1     4       7    5    4    0    5    7
         2     5       5    4    4    0    4    6
         3    10       0    0    4    7    3    6
 11      1     3       2    6    0    0    5    3
         2     4       0    5    3    4    4    3
         3     6       0    2    1    0    4    3
 12      1     4       0    2    6    3    2    9
         2     4       4    4    0    4    2    6
         3     9       0    0    7    0    2    5
 13      1     2       0    0   10    6    6    6
         2     6       8    0    8    0    6    6
         3    10       0    9    0    6    5    5
 14      1     4       0    0    0    5    4    6
         2     8       8    6    7    4    3    4
         3     9       8    0    2    0    2    1
 15      1     4       8   10    4    3    9    4
         2     6       4    0    0    0    1    3
         3     6       0    0    0    2    3    2
 16      1     4       7    5    9    9    8    8
         2     4       0    0    7    0    9    7
         3    10       0    0    0    9    8    6
 17      1     1       0    0    1    0    7   10
         2     4       0    0    0    8    7   10
         3     5       0    5    0    7    6    9
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
    7    8   11    7   75   76
************************************************************************
