************************************************************************
file with basedata            : cn362_.bas
initial value random generator: 10370
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  135
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  3   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23       10       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3          10  12  14
   3        3          3           5   6   8
   4        3          2           7  12
   5        3          3          10  12  13
   6        3          2          11  16
   7        3          2           9  13
   8        3          2           9  10
   9        3          2          11  15
  10        3          1          11
  11        3          1          17
  12        3          2          15  17
  13        3          2          16  17
  14        3          2          15  16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2  N 3
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     4       2    5    4    8    8
         2     8       2    4    4    6    8
         3     9       1    4    3    4    7
  3      1     2       5    2    5    9    8
         2     4       3    2    4    7    8
         3     6       2    1    4    6    7
  4      1     9       4    9    6    7    8
         2     9       4    8    6    8    8
         3    10       1    8    5    6    8
  5      1     2       9    7    9    8    8
         2     4       7    7    8    8    7
         3     9       5    6    8    7    1
  6      1     3       8    7    7    2    6
         2     7       8    3    6    2    4
         3     8       7    3    6    1    2
  7      1     2       8   10    3    6    7
         2     4       8   10    2    5    7
         3    10       8   10    2    3    7
  8      1     3       8    4   10    5    8
         2     7       4    4    7    3    7
         3    10       4    4    7    2    7
  9      1     5       9    7    6    9    8
         2     8       6    7    5    6    8
         3    10       5    7    4    2    8
 10      1     1       7    9    7    6    8
         2     6       4    7    4    5    6
         3     8       4    3    4    4    5
 11      1     3       6    9    9   10    9
         2     4       6    7    5    9    5
         3     8       6    6    2    6    5
 12      1     1       8    8    5    5    9
         2     5       7    7    5    3    9
         3     6       6    7    4    3    9
 13      1     1       8    5    7    7    8
         2     8       8    5    7    6    4
         3     8       8    5    6    6    5
 14      1     2       8   10    5    7    7
         2     7       5    4    3    5    7
         3     7       3    7    2    7    7
 15      1     1       5    6    8    8    5
         2     3       4    6    5    8    5
         3    10       1    6    3    8    4
 16      1     4       6    5    6    6    9
         2     5       6    3    5    4    8
         3     6       6    2    1    1    7
 17      1     4       7    6    8    4    6
         2     8       4    5    8    4    4
         3    10       4    4    8    4    4
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2  N 3
   20   21  105  108  122
************************************************************************
