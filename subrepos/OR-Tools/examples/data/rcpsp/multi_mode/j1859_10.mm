************************************************************************
file with basedata            : md315_.bas
initial value random generator: 417449609
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  20
horizon                       :  163
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     18      0       18        5       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6  17
   3        3          3           8  12  14
   4        3          2           8  12
   5        3          2           7  15
   6        3          2           8   9
   7        3          3           9  10  11
   8        3          2          15  18
   9        3          2          13  14
  10        3          1          13
  11        3          2          14  16
  12        3          2          15  17
  13        3          1          16
  14        3          2          18  19
  15        3          1          19
  16        3          2          18  19
  17        3          1          20
  18        3          1          20
  19        3          1          20
  20        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       5    0    7    6
         2     7       0    8    7    6
         3    10       0    8    6    3
  3      1     1       0    8    7    9
         2     5       8    0    4    8
         3     9       4    0    3    8
  4      1     6       4    0    6   10
         2     9       0    9    5    8
         3    10       0    4    3    4
  5      1     3       0    9    6    4
         2     9       8    0    6    3
         3    10       8    0    3    2
  6      1     2       0    8    7    2
         2     6       0    5    6    1
         3    10       6    0    5    1
  7      1     2       9    0    8    8
         2     5       0    5    5    8
         3     9       6    0    4    7
  8      1     6       4    0    8    5
         2     7       0    9    4    2
         3     7       4    0    4    3
  9      1     4       3    0    1    6
         2     7       3    0    1    5
         3     9       3    0    1    4
 10      1     3       0    4    5    4
         2     3       0    5    6    3
         3     9       0    3    5    3
 11      1     3       0    6    3    4
         2     5       0    6    3    3
         3     8       0    5    2    2
 12      1     7       9    0    6    4
         2    10       0    2    2    4
         3    10       6    0    1    4
 13      1     4       0    9    7    3
         2     6       7    0    7    3
         3    10       6    0    5    2
 14      1     4       5    0    4    5
         2     8       0    9    3    2
         3     9       0    9    2    1
 15      1     2       0   10    6    7
         2     7       5    0    6    7
         3     9       0    8    6    6
 16      1     1       6    0    4    9
         2     6       4    0    3    6
         3     9       0    8    3    5
 17      1     5       8    0    7    5
         2     6       7    0    7    5
         3     7       4    0    7    3
 18      1     2       0    7    4    5
         2     5       7    0    4    4
         3     9       6    0    4    3
 19      1     1       4    0    7    7
         2     5       4    0    6    7
         3     9       2    0    6    3
 20      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   21   22  104  103
************************************************************************
