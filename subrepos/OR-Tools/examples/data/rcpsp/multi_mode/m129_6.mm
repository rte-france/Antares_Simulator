************************************************************************
file with basedata            : cm129_.bas
initial value random generator: 1374836180
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  77
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       35       12       35
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          2           6  12
   3        1          3           9  13  17
   4        1          3           5   8  12
   5        1          2           9  17
   6        1          3           7   8   9
   7        1          2          10  15
   8        1          1          10
   9        1          2          15  16
  10        1          1          11
  11        1          2          13  14
  12        1          3          13  14  15
  13        1          1          16
  14        1          2          16  17
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       5    9    2    0
  3      1     6       9    8    5    0
  4      1     9       4    7    0    6
  5      1     4       4    3    0    4
  6      1     4       7    7    0   10
  7      1    10       6    7    3    0
  8      1     5      10    3    4    0
  9      1     4       4    4    0    5
 10      1     2      10    4    0    2
 11      1     8       4    4    5    0
 12      1     2       5    9    9    0
 13      1     4      10    3    4    0
 14      1     3       6    5    3    0
 15      1     8       5    3    4    0
 16      1     6       5    6    4    0
 17      1     1       2    3    3    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   14   13   46   27
************************************************************************
