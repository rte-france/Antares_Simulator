************************************************************************
file with basedata            : cr538_.bas
initial value random generator: 1152016675
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  120
RESOURCES
  - renewable                 :  5   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       26       14       26
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   7
   3        3          3          12  15  16
   4        3          2          11  14
   5        3          2          10  11
   6        3          1           9
   7        3          2           8   9
   8        3          3          12  14  15
   9        3          2          10  11
  10        3          2          13  14
  11        3          1          12
  12        3          1          17
  13        3          3          15  16  17
  14        3          2          16  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  R 5  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0    0
  2      1     2       9    7    9    8    8    6    7
         2     8       7    5    9    8    6    6    4
         3    10       7    5    9    6    6    4    4
  3      1     1       7    7    8    6    2    3    6
         2     9       7    6    7    5    1    2    3
         3     9       6    6    7    5    2    2    1
  4      1     5       6    6    8    4    8    7    7
         2     9       6    6    7    4    5    4    7
         3     9       6    6    7    4    5    5    6
  5      1     2       7    9    8    9    3   10    6
         2     3       6    7    8    8    3    9    5
         3     6       5    4    4    7    3    9    5
  6      1     4       9    7    7    9    6    7    5
         2     7       8    5    5    9    5    6    2
         3    10       5    2    4    9    5    5    2
  7      1     2       4    7    7    9    9    9    5
         2     7       3    4    7    8    8    6    4
         3     9       2    3    6    8    7    6    4
  8      1     2       7    4   10    9    7    6    8
         2     3       7    2    9    4    5    3    8
         3     4       6    1    7    3    2    2    7
  9      1     5       5    7    4    9    6    7    4
         2     9       4    7    4    6    6    6    2
         3    10       4    5    3    1    6    6    2
 10      1     6       9    9    2   10    1    6    2
         2     7       9    9    2    6    1    6    1
         3     8       7    8    2    5    1    5    1
 11      1     2       8    6    3    5    1    5   10
         2     2       7    6    6    4    1    6   10
         3     2       8    5    7    4    3    4    9
 12      1     2       7    4    9    6    8    4    9
         2     5       3    3    6    4    5    3    8
         3     7       3    3    2    3    3    2    7
 13      1     2       4    6   10    9    6    8    8
         2     5       4    4    9    7    6    8    5
         3     5       4    4    7    8    6    6    4
 14      1     4       8    4    9    2    8    8    5
         2     6       5    4    5    1    6    6    3
         3    10       1    3    4    1    1    5    2
 15      1     3       9    7    8    3    4    3   10
         2     5       9    3    7    2    4    3    9
         3     7       6    1    7    2    3    2    8
 16      1     1       7    3    9   10    8   10    7
         2     2       7    2    9    9    6    9    6
         3     4       6    1    8    9    6    9    5
 17      1     5       8    7    7    9    9    5    9
         2     9       5    5    5    9    6    3    9
         3    10       4    4    3    9    4    2    9
 18      1     0       0    0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  R 5  N 1  N 2
   17   19   20   20   17   81   84
************************************************************************
