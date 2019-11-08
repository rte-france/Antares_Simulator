************************************************************************
file with basedata            : mf36_.bas
initial value random generator: 15601
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  241
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       30        5       30
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3          13  17  26
   3        3          3           5   7  24
   4        3          2           6  10
   5        3          3          11  12  25
   6        3          3           8   9  15
   7        3          3          11  12  15
   8        3          2          22  23
   9        3          3          21  22  28
  10        3          2          13  19
  11        3          3          14  19  29
  12        3          2          16  18
  13        3          1          24
  14        3          1          30
  15        3          3          26  27  30
  16        3          1          17
  17        3          2          20  23
  18        3          2          19  26
  19        3          2          23  28
  20        3          3          21  28  31
  21        3          1          29
  22        3          1          24
  23        3          1          27
  24        3          1          25
  25        3          1          31
  26        3          1          29
  27        3          1          31
  28        3          1          30
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       0    4    0    1
         2     8       3    0    6    0
         3    10       0    3    3    0
  3      1     4       4    0    5    0
         2     5       0    9    0    4
         3     9       0    6    0    3
  4      1     1       5    0    8    0
         2     7       0    5    0    5
         3     9       0    4    7    0
  5      1     2       4    0    5    0
         2     4       3    0    3    0
         3     9       0    5    2    0
  6      1     1       0    4    9    0
         2     7       9    0    9    0
         3     8       9    0    8    0
  7      1     1       0    8    8    0
         2     3       3    0    0   10
         3     8       0    4    5    0
  8      1     1       0    6    0    8
         2     5       4    0    0    5
         3     6       3    0    3    0
  9      1     8       0    4    0    9
         2     8       6    0    6    0
         3     8       4    0    0    9
 10      1     1       5    0    0    9
         2     7       0    4    0    9
         3     8       3    0    0    9
 11      1     2       0    7    0    6
         2     4       7    0    8    0
         3    10       5    0    0    1
 12      1     4       0    8    0    9
         2     5       0    7    8    0
         3     6       0    7    6    0
 13      1     1       4    0    2    0
         2     6       4    0    0    6
         3     9       3    0    0    5
 14      1     2       0    7    0    9
         2     4      10    0    6    0
         3     7       0    4    3    0
 15      1     1       4    0    0    8
         2     5       3    0    3    0
         3     9       3    0    0    7
 16      1     3       0    7    0    4
         2     6       6    0    0    3
         3     7       0    5    5    0
 17      1     1       5    0    0   10
         2     6       0    4    0    9
         3     6       5    0   10    0
 18      1     1       3    0    8    0
         2     5       3    0    0    6
         3     8       3    0    6    0
 19      1     3       0    8    9    0
         2     4       0    8    0    7
         3     9       8    0    0    5
 20      1     8       0    6    0    6
         2     9       0    4    8    0
         3    10       4    0    6    0
 21      1     6       0    3    8    0
         2     6       3    0    8    0
         3     6       0    7    0    9
 22      1     2       7    0    5    0
         2     6       0    4    5    0
         3     7       7    0    4    0
 23      1     2       0   10    4    0
         2     6       9    0    0    9
         3    10       8    0    3    0
 24      1     2       0    9    5    0
         2     5       0    9    0    7
         3     9       0    8    0    4
 25      1     5       9    0    8    0
         2     6       0    8    7    0
         3    10       7    0    6    0
 26      1     1       0   10    0    8
         2     2       0    9    0    6
         3     4       0    9    0    4
 27      1     7       8    0    0    7
         2     8       0    8    0    7
         3    10       0    5    0    7
 28      1     1       0    7    4    0
         2     2       0    6    4    0
         3     4       1    0    4    0
 29      1     2       8    0    0    8
         2     6       5    0    0    3
         3     7       0    6    9    0
 30      1     6       3    0    6    0
         2     8       2    0    2    0
         3     9       0    7    0    8
 31      1     3       6    0    0    5
         2     4       0    3    0    1
         3     9       5    0    1    0
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   34   29   60   60
************************************************************************
