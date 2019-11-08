************************************************************************
file with basedata            : cr460_.bas
initial value random generator: 1192387890
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  113
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23       12       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   7   8
   3        3          3           6   8  14
   4        3          2          11  14
   5        3          2           6  12
   6        3          2           9  17
   7        3          3           9  10  17
   8        3          2          15  16
   9        3          1          11
  10        3          2          13  14
  11        3          1          13
  12        3          3          13  15  17
  13        3          1          16
  14        3          2          15  16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     1       7    7    0    8    5    3
         2     4       0    4    0    0    5    2
         3    10       0    0    5    0    4    1
  3      1     8       0    8    0    6    4    1
         2    10       4    0   10    3    4    1
         3    10       0    6    9    0    3    1
  4      1     1       4    4    3    0    6    6
         2     9       4    0    0    0    6    6
         3    10       4    0    0    0    6    4
  5      1     2       0    0   10    8    4    8
         2     5      10    0   10    8    2    6
         3     6       9    0   10    8    1    5
  6      1     2       0    5    0    6    2    8
         2     3       6    0    0    0    2    7
         3     8       5    0    0    6    1    2
  7      1     4       6    4    5    5    7   10
         2     4       9    5    0    0    8    8
         3     7       0    0    5    0    7    8
  8      1     4       0    2    5    7    4   10
         2     4       0    0    4   10    6    6
         3     4       0    2    0    0    5    9
  9      1     1       7    0    8    0    7    9
         2     4       6    3    7    0    5    6
         3     4       3    0    6    0    5    8
 10      1     6       0    0    3    0    8    5
         2     6       0    1    0    0    8    5
         3     8       3    1    3    6    7    3
 11      1     5       3    0    4    7    6    8
         2     7       0    3    0    7    4    3
         3     7       0    2    0    0    4    5
 12      1     2      10    4    7    0    7    8
         2     4       9    4    7    0    5    8
         3     9       0    0    0    6    4    7
 13      1     3       5    8    1    1    7    3
         2     3       0    8    0    0    8    2
         3     3       0    0    3    0    8    1
 14      1     4       9    0    5    0    2    9
         2     5       6    0    0    0    1    7
         3     8       4    0    4    1    1    5
 15      1     8       8    0    8    5    4    6
         2    10       7    0    0    0    2    6
         3    10       0    7    0    0    3    6
 16      1     2       3    5    4    0    8    5
         2     2       0    0    5    0    8    5
         3     6       0    5    0    0    7    4
 17      1     1       0    3    3    0   10    9
         2     2       0    0    3    6    9    9
         3     3       0    3    0    0    9    8
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   23   19   20   29   95  108
************************************************************************
