************************************************************************
file with basedata            : cm440_.bas
initial value random generator: 61387221
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  144
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18       14       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        4          2          12  16
   3        4          3           8  10  11
   4        4          3           5   7  12
   5        4          3           6   8  13
   6        4          3           9  16  17
   7        4          1           8
   8        4          2          15  17
   9        4          1          14
  10        4          3          13  14  16
  11        4          1          12
  12        4          2          13  14
  13        4          2          15  17
  14        4          1          15
  15        4          1          18
  16        4          1          18
  17        4          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       8    8    7    8
         2     5       8    8    5    8
         3     6       4    6    4    7
         4     8       3    6    3    7
  3      1     3      10    8    4    6
         2     4       8    8    4    6
         3     8       6    7    4    6
         4     9       6    7    2    5
  4      1     3       7    5    7    9
         2     3       6    7    7    8
         3     3       7    7    7    6
         4     8       6    5    7    6
  5      1     4       6    5    8    7
         2     4       7    4    6    7
         3     8       4    3    3    7
         4    10       3    3    3    7
  6      1     1       9    6    2    6
         2     5       9    6    2    4
         3     9       9    6    1    2
         4    10       9    5    1    1
  7      1     4       5    7    9    5
         2     6       4    4    6    5
         3    10       4    1    4    2
         4    10       4    2    3    3
  8      1     1       7   10    6    7
         2     7       5    6    5    7
         3     7       7    6    6    6
         4     8       5    4    5    6
  9      1     2       9    9    7    9
         2     4       7    9    6    8
         3     8       7    8    5    6
         4     8       6    8    5    7
 10      1     1       7   10    8    8
         2     4       6    8    7    7
         3     5       3    5    7    7
         4    10       1    3    7    5
 11      1     4       9    8    9    8
         2     7       9    7    8    8
         3     8       8    7    5    7
         4    10       7    6    4    7
 12      1     4       8    5    8    3
         2     7       8    5    7    3
         3     8       6    4    7    3
         4     9       6    4    6    2
 13      1     4       5    6    6    4
         2     7       4    6    5    4
         3     9       3    5    2    4
         4    10       2    2    2    4
 14      1     1       9    6    8    7
         2     3       8    5    6    6
         3     5       6    4    5    6
         4     8       6    3    3    5
 15      1     3       5    2    9    7
         2     4       5    2    6    7
         3     5       5    2    5    7
         4     8       5    2    3    7
 16      1     4       4    8    3    4
         2     6       3    6    2    4
         3     6       3    5    3    3
         4     8       3    2    2    3
 17      1     1       8    8    6    8
         2     6       7    8    5    7
         3     8       4    8    2    7
         4    10       4    8    1    6
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   36   38   70   86
************************************************************************
