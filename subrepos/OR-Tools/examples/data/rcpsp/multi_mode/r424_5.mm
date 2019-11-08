************************************************************************
file with basedata            : cr424_.bas
initial value random generator: 194592801
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  111
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       16        1       16
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           7  12
   3        3          3           5   8  13
   4        3          3           5   6  11
   5        3          2          15  17
   6        3          2           7  12
   7        3          3           8  10  15
   8        3          2           9  16
   9        3          1          14
  10        3          1          14
  11        3          3          13  15  16
  12        3          3          13  14  16
  13        3          1          17
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
  2      1     4       9    5    8    2    4    0
         2     7       8    3    6    2    4    0
         3     8       8    3    5    1    3    0
  3      1     3       6    8    5   10    6    0
         2     8       5    7    3    8    0   10
         3     9       3    7    1    7    0    7
  4      1     4       8    8    9   10    0    7
         2     6       4    4    9    4    0    7
         3     7       2    3    7    4    0    7
  5      1     2       6    9   10    7    0    6
         2     3       4    5    9    3    0    6
         3     8       3    2    9    1    0    6
  6      1     4       5   10    7    5    6    0
         2     7       5    9    7    4    4    0
         3     8       4    6    6    4    4    0
  7      1     1       8    6    9    3    7    0
         2     6       6    5    6    3    6    0
         3     9       4    5    5    2    0   10
  8      1     2       2    5    8    7    7    0
         2     5       2    5    7    5    7    0
         3     7       1    5    6    4    7    0
  9      1     2       9    8    5   10    0    7
         2     5       9    7    5    9    0    6
         3    10       6    5    5    7    9    0
 10      1     3       7    8    9    6    0    7
         2     4       6    4    9    5    0    7
         3     8       6    1    9    3    1    0
 11      1     1       9    3    7   10    0    8
         2     4       9    2    4    8    0    5
         3     6       9    2    3    7    0    3
 12      1     3       4    5    7    5    6    0
         2     3       4    3    7    4    0    9
         3     9       3    3    7    3    6    0
 13      1     1       8    8    8    7    5    0
         2     1       8    8    8    6    0    7
         3     3       8    8    5    6    0    3
 14      1     2       7    7    8    9    8    0
         2     3       4    6    8    9    0    9
         3     6       4    6    6    8    0    9
 15      1     2       2    5    6    5    0    5
         2     2       2    5    4    5    2    0
         3     3       2    4    4    5    2    0
 16      1     2       6    3    3    4    0    6
         2     7       4    2    3    2    0    2
         3     8       4    1    3    2   10    0
 17      1     1       6    9    6    6    8    0
         2     2       4    6    6    4    3    0
         3     2       5    4    4    6    0    8
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   30   27   30   27   63   78
************************************************************************
