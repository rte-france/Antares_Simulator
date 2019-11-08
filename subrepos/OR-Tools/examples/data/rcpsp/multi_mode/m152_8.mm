************************************************************************
file with basedata            : cm152_.bas
initial value random generator: 205850743
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  75
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       26       15       26
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           5  10  11
   3        1          2           6  10
   4        1          3           7   8  14
   5        1          3           8  13  14
   6        1          1           9
   7        1          2           9  11
   8        1          2          15  17
   9        1          2          12  15
  10        1          2          14  17
  11        1          2          13  16
  12        1          2          13  16
  13        1          1          17
  14        1          2          15  16
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       0    6    7    4
  3      1     2       2    0    6    5
  4      1     2       9    0    6    7
  5      1     7       4    0    6    5
  6      1     4       8    0    7    8
  7      1     4       1    0    8    4
  8      1     3       0    9    7    8
  9      1     2       0    8    3    5
 10      1     8       7    0    7    7
 11      1     4       0    7    4    4
 12      1     3       0    9    8    6
 13      1     9       0    4    4    6
 14      1     8       0    6    3    4
 15      1     5       1    0    7    8
 16      1     4       0    4    6    5
 17      1     6       0    6    7    1
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   20   19   96   87
************************************************************************
