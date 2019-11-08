************************************************************************
file with basedata            : cr556_.bas
initial value random generator: 43970009
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  128
RESOURCES
  - renewable                 :  5   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17       13       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   8
   3        3          1           9
   4        3          3           8  10  13
   5        3          2           7  17
   6        3          2          12  15
   7        3          2          11  13
   8        3          2           9  14
   9        3          3          11  16  17
  10        3          3          11  12  14
  11        3          1          15
  12        3          2          16  17
  13        3          2          14  16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  R 5  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0    0
  2      1     1       6    5    7    2    8   10    6
         2     1       8    5    9    2    8    8    6
         3     8       6    5    4    1    8    7    5
  3      1     1      10    5    8    6   10    3    5
         2     6       8    5    6    5   10    3    4
         3     8       6    5    5    1   10    2    4
  4      1     3       8    6    8    7    8    5   10
         2     4       8    6    7    7    6    4    9
         3     5       6    6    7    7    4    3    8
  5      1     1       5    7    7    4    6   10    4
         2     4       4    7    6    3    5   10    4
         3     8       3    7    6    3    3    9    4
  6      1     1       4    2    8    6    3    6    8
         2     1       5    2    8    7    5    5    7
         3     8       4    2    7    6    2    5    7
  7      1     5       6    5    8    9    9    6    9
         2     7       6    4    6    8    8    5    7
         3     8       6    1    5    7    8    5    6
  8      1     1       8    6    5    7    8    2    2
         2     5       7    4    4    5    4    2    1
         3     7       7    1    3    3    3    1    1
  9      1     6       7    3    6    8    7    5    4
         2     9       4    3    4    7    5    3    4
         3     9       2    3    6    6    6    3    4
 10      1     1       7    4    8    8    9    4    7
         2     7       6    3    7    6    7    2    7
         3    10       6    3    7    3    6    2    6
 11      1     6       4    9    4    3    3    9   10
         2     9       3    9    3    3    2    7    9
         3    10       1    8    1    2    2    6    6
 12      1     5       4    8   10    6    4    7    8
         2     5       3    8   10    6    7    8    9
         3     7       2    2    9    5    4    6    7
 13      1     1       7   10    7    6    5    5    6
         2     3       7   10    6    5    4    5    6
         3    10       3   10    3    1    3    4    2
 14      1     2       4    6    9    9    4   10    9
         2     8       3    5    9    7    3    5    8
         3    10       3    4    9    5    3    5    6
 15      1     1      10    7    4    6    5    6    3
         2     3       9    6    3    6    5    4    3
         3     7       9    4    2    5    5    2    2
 16      1     3       1    6    6    5    8    8    9
         2     3       1    7    7    5    7    8    8
         3     6       1    5    4    5    5    6    8
 17      1     3       9    4    7    9    8    5    8
         2     6       7    2    5    8    6    5    5
         3     7       6    2    1    5    5    5    5
 18      1     0       0    0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  R 5  N 1  N 2
   26   21   25   24   26   94  102
************************************************************************
