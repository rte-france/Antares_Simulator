************************************************************************
file with basedata            : cm563_.bas
initial value random generator: 398075997
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  135
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20       15       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          3           5  11  12
   3        5          2           8  15
   4        5          2           9  10
   5        5          3           6   7   8
   6        5          2          13  16
   7        5          2          10  13
   8        5          2          16  17
   9        5          3          11  12  13
  10        5          1          15
  11        5          3          14  16  17
  12        5          2          14  17
  13        5          1          14
  14        5          1          15
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       6    8    7    7
         2     2       4    8    6    7
         3     5       4    7    4    7
         4     9       4    4    4    7
         5    10       2    3    2    7
  3      1     2       5    8    4    4
         2     3       4    8    4    4
         3     4       4    7    4    4
         4     6       4    6    4    4
         5     7       3    6    4    4
  4      1     2       8    8   10    7
         2     3       6    8   10    7
         3     4       3    8   10    6
         4     4       4    7   10    6
         5     6       3    7   10    5
  5      1     5       6    6    9    9
         2     6       4    6    8    9
         3     8       4    5    5    8
         4     9       3    5    4    8
         5    10       2    5    2    8
  6      1     1       8    8    8    3
         2     2       7    6    8    2
         3     6       5    6    7    2
         4     7       2    5    7    2
         5     9       2    5    7    1
  7      1     4       9    9    6    7
         2     4      10    8    6    7
         3     6       9    6    5    6
         4     7       7    4    5    6
         5     8       5    3    4    6
  8      1     2       8    6    7    7
         2     2       9    8    6    7
         3     3       8    3    6    6
         4     3       5    4    5    6
         5     4       4    1    2    6
  9      1     5       8    8    8    4
         2     6       7    8    8    4
         3     7       7    8    7    4
         4     8       6    7    6    4
         5     9       6    6    6    4
 10      1     1       7    6    9    9
         2     3       7    6    7    9
         3     4       7    6    7    6
         4     6       6    5    6    6
         5     9       6    5    6    4
 11      1     2       6    5    7   10
         2     2       5    6    7   10
         3     4       4    5    7    9
         4     4       5    5    6    8
         5     5       3    4    3    7
 12      1     6       9    9    9    9
         2     6       9    8    9   10
         3     7       9    8    8    8
         4     8       8    6    7    4
         5    10       8    5    6    3
 13      1     3       3    4    9    8
         2     3       3    5    8    8
         3     8       3    4    6    8
         4     9       2    4    5    7
         5    10       2    2    4    6
 14      1     1       6    7    7    4
         2     2       5    7    7    3
         3     5       3    6    7    3
         4     9       2    6    6    3
         5     9       3    6    6    2
 15      1     6       8    7    5    4
         2     6       7    8    5    4
         3     7       7    6    4    4
         4     8       6    5    3    4
         5     9       5    5    2    3
 16      1     4      10   10    9    9
         2     8       7    7    9    7
         3     8       7    6    9    8
         4     9       4    5    8    7
         5    10       2    2    7    5
 17      1     7       5    6    8    5
         2     8       3    6    4    3
         3     8       3    5    7    5
         4     8       5    5    7    4
         5    10       3    5    4    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   28   27  122  107
************************************************************************
