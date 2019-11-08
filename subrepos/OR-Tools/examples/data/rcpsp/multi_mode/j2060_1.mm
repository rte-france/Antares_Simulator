************************************************************************
file with basedata            : md380_.bas
initial value random generator: 24036
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  22
horizon                       :  173
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     20      0       18       14       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7   9  10
   3        3          3          11  12  16
   4        3          2           5   6
   5        3          3           8   9  11
   6        3          3           8  10  15
   7        3          1          20
   8        3          2          16  19
   9        3          3          12  14  19
  10        3          2          11  13
  11        3          1          17
  12        3          1          18
  13        3          2          17  21
  14        3          1          15
  15        3          2          16  18
  16        3          1          21
  17        3          2          19  20
  18        3          2          20  21
  19        3          1          22
  20        3          1          22
  21        3          1          22
  22        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       6    0    7    6
         2     3       0    6    5    5
         3     6       0    2    1    2
  3      1     1       7    0    9    4
         2     7       0    3    9    4
         3    10       3    0    7    4
  4      1     1       0    9    8    9
         2     8      10    0    8    7
         3     9       8    0    8    6
  5      1     3       7    0    9    4
         2     7       4    0    9    1
         3     7       0    4    9    1
  6      1     3       0    6    9    8
         2     5       0    5    4    6
         3    10       0    4    4    5
  7      1     6       7    0   10   10
         2     9       0    9    9    8
         3    10       0    9    9    6
  8      1     2       4    0    3    7
         2     4       1    0    3    5
         3     9       0    2    2    4
  9      1     1       6    0    9    7
         2     2       0    9    5    4
         3     5       0    8    1    4
 10      1     3       9    0    6    5
         2     6       8    0    5    5
         3     9       6    0    4    5
 11      1     1       6    0    2    7
         2     7       0    9    1    4
         3    10       4    0    1    2
 12      1     6       8    0    8    5
         2     9       2    0    7    5
         3     9       5    0    6    5
 13      1     2       0   10    9    8
         2     7       0   10    5    8
         3     8       1    0    2    6
 14      1     1       4    0    9    8
         2     2       0    4    6    4
         3    10       0    3    2    4
 15      1     3       6    0    8    3
         2     8       0    7    8    3
         3     8       3    0    8    3
 16      1     3       0    3    7    7
         2     3       6    0    9    8
         3    10       0    4    6    5
 17      1     5       9    0   10    4
         2     7       7    0    6    3
         3     9       4    0    4    1
 18      1     3       0    6    5    5
         2     6       3    0    2    5
         3    10       0    4    2    4
 19      1     4       9    0    8    7
         2     5       0    7    7    6
         3     9       0    3    7    6
 20      1     3       8    0   10    2
         2     5       7    0   10    2
         3     7       7    0   10    1
 21      1     2       6    0    8    4
         2     8       6    0    7    3
         3     8       0    9    6    3
 22      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   25   39  156  121
************************************************************************
