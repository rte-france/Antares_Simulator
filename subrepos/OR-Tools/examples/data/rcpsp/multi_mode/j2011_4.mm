************************************************************************
file with basedata            : md331_.bas
initial value random generator: 1698455254
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  22
horizon                       :  159
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     20      0       28        8       28
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2          15  16
   3        3          2           7   9
   4        3          3           5   7   8
   5        3          3           6  10  15
   6        3          2          13  16
   7        3          2          15  17
   8        3          3           9  11  12
   9        3          1          19
  10        3          2          11  12
  11        3          1          13
  12        3          2          14  18
  13        3          2          14  20
  14        3          2          19  21
  15        3          2          20  21
  16        3          3          17  19  21
  17        3          1          18
  18        3          1          20
  19        3          1          22
  20        3          1          22
  21        3          1          22
  22        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2      10    0    6    0
         2     6       9    0    0    1
         3    10       9    0    5    0
  3      1     2       0    8    9    0
         2     8      10    0    6    0
         3    10       0    7    5    0
  4      1     5       8    0    8    0
         2     7       0    4    0    3
         3     9       8    0    4    0
  5      1     6       0    8    0    6
         2     7       0    7    0    2
         3     8       0    5    8    0
  6      1     8       0    6    7    0
         2    10       0    5    7    0
         3    10       7    0    0    4
  7      1     2       6    0    0    4
         2     3       3    0    2    0
         3     4       0    6    2    0
  8      1     1       5    0    4    0
         2     1       5    0    0    4
         3     7       0    1    0    4
  9      1     1       0    5    0    8
         2     6       0    5    0    7
         3    10       7    0    8    0
 10      1     2       5    0   10    0
         2     8       0    5    0    4
         3    10       5    0    0    4
 11      1     1       0    7    8    0
         2     4       7    0    0    2
         3     8       5    0    0    2
 12      1     8       0    7    2    0
         2     9       0    6    0    3
         3     9       5    0    0    4
 13      1     2       0    7    0    8
         2     3       0    6    8    0
         3     3       7    0    0    6
 14      1     2       0    6    6    0
         2     4       0    4    3    0
         3     4       0    5    1    0
 15      1     4       6    0    9    0
         2     4       0    6    6    0
         3     8       0    3    0    4
 16      1     2       0    5    0    4
         2    10       4    0    0    4
         3    10       4    0    6    0
 17      1     1       9    0    0    5
         2     3       8    0    4    0
         3     9       0    4    0    3
 18      1     5      10    0    2    0
         2     6       0    7    0    7
         3     6       8    0    0    7
 19      1     3       7    0    0    6
         2     5       0    7    0    6
         3     6       0    5    0    3
 20      1     1       0    7    0    4
         2     9       3    0   10    0
         3    10       0    2    0    3
 21      1     5       0    5    9    0
         2     8       0    3    4    0
         3     8       0    2    0    7
 22      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   26   18   66   44
************************************************************************
