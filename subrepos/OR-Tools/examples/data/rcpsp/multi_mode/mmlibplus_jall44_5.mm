jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 10 11 16 
2	3	6		21 20 17 14 9 8 
3	3	5		18 15 13 12 7 
4	3	6		27 17 15 14 13 9 
5	3	7		24 23 21 19 15 14 13 
6	3	7		37 31 24 23 22 19 15 
7	3	2		21 9 
8	3	6		37 31 24 22 18 15 
9	3	8		37 36 30 25 24 23 22 19 
10	3	6		35 28 26 22 20 17 
11	3	6		51 37 31 30 20 19 
12	3	8		51 37 36 30 29 25 24 23 
13	3	5		37 33 31 28 20 
14	3	10		51 50 49 37 33 32 30 29 28 25 
15	3	9		51 49 36 33 32 30 29 28 25 
16	3	6		51 36 32 30 25 23 
17	3	11		51 49 48 47 44 43 41 37 33 31 29 
18	3	9		49 48 44 36 35 33 32 30 29 
19	3	7		50 48 47 35 33 29 26 
20	3	7		50 49 47 36 32 29 25 
21	3	3		49 28 22 
22	3	10		51 50 48 47 46 45 44 38 33 32 
23	3	7		50 48 45 41 38 33 28 
24	3	4		47 45 33 26 
25	3	7		48 46 44 40 39 38 34 
26	3	6		49 44 42 39 38 32 
27	3	5		46 45 43 39 32 
28	3	5		44 43 42 40 39 
29	3	3		46 45 42 
30	3	3		47 43 38 
31	3	3		50 39 38 
32	3	2		41 40 
33	3	2		40 39 
34	3	2		42 41 
35	3	2		43 38 
36	3	1		43 
37	3	1		38 
38	3	1		52 
39	3	1		52 
40	3	1		52 
41	3	1		52 
42	3	1		52 
43	3	1		52 
44	3	1		52 
45	3	1		52 
46	3	1		52 
47	3	1		52 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	3	9	9	4	8	7	8	
	2	4	4	8	3	8	5	7	
	3	5	2	8	1	8	4	5	
3	1	1	8	5	10	9	4	9	
	2	4	6	5	10	8	4	8	
	3	5	5	4	10	7	4	8	
4	1	5	3	7	7	7	7	9	
	2	6	1	4	4	4	5	5	
	3	8	1	3	1	2	3	3	
5	1	6	10	8	7	9	4	4	
	2	8	8	8	6	5	3	4	
	3	9	8	7	6	3	3	1	
6	1	4	2	9	6	7	8	8	
	2	6	2	9	5	7	8	5	
	3	7	2	9	5	3	7	1	
7	1	1	9	7	4	9	3	3	
	2	7	5	4	3	8	3	3	
	3	8	2	3	2	7	3	2	
8	1	1	2	6	3	9	4	1	
	2	2	2	5	2	7	3	1	
	3	8	2	3	2	7	1	1	
9	1	1	9	8	2	5	5	8	
	2	5	7	8	1	4	4	7	
	3	7	3	8	1	3	4	7	
10	1	2	7	9	8	10	8	7	
	2	4	6	7	4	10	7	5	
	3	7	6	6	1	10	7	5	
11	1	6	6	3	7	10	6	7	
	2	7	6	3	5	8	5	6	
	3	9	6	2	3	8	3	4	
12	1	1	5	1	10	6	5	6	
	2	2	5	1	9	4	4	6	
	3	3	5	1	9	3	2	5	
13	1	3	10	9	5	9	7	7	
	2	8	10	7	5	8	4	5	
	3	10	10	7	5	8	1	4	
14	1	1	1	8	4	10	8	6	
	2	2	1	5	4	8	6	4	
	3	5	1	4	4	7	3	3	
15	1	3	3	10	8	8	8	7	
	2	5	3	6	4	7	6	6	
	3	7	3	6	4	6	6	2	
16	1	4	8	5	4	6	7	10	
	2	8	8	5	2	3	7	8	
	3	10	8	4	2	3	3	6	
17	1	1	7	8	5	10	9	7	
	2	6	5	7	4	10	8	7	
	3	10	5	7	2	10	8	7	
18	1	5	6	10	6	7	8	5	
	2	6	5	6	5	5	5	5	
	3	10	4	5	5	5	3	5	
19	1	1	9	4	10	4	6	7	
	2	4	8	3	9	4	2	6	
	3	6	8	2	8	4	1	6	
20	1	4	6	6	1	6	6	8	
	2	5	4	4	1	5	4	8	
	3	6	2	3	1	4	2	7	
21	1	4	5	7	9	6	9	4	
	2	5	4	7	8	4	8	3	
	3	7	3	4	7	2	7	2	
22	1	1	4	6	8	7	4	8	
	2	6	4	4	6	4	4	7	
	3	10	3	3	6	4	4	5	
23	1	6	8	5	5	4	6	5	
	2	9	8	3	3	2	4	3	
	3	10	7	2	3	2	4	3	
24	1	3	8	4	8	6	6	7	
	2	8	6	3	8	4	6	5	
	3	10	5	3	7	1	6	4	
25	1	2	6	8	3	5	9	2	
	2	3	6	7	2	4	8	2	
	3	4	6	6	2	3	8	2	
26	1	1	8	8	7	8	9	7	
	2	3	4	6	5	6	7	5	
	3	6	2	6	4	4	5	2	
27	1	1	8	10	8	6	8	9	
	2	5	7	7	5	6	5	8	
	3	8	7	2	3	4	5	8	
28	1	4	1	10	5	6	1	8	
	2	7	1	7	2	6	1	4	
	3	10	1	5	1	6	1	4	
29	1	3	3	8	3	6	9	9	
	2	4	3	6	2	6	8	7	
	3	5	1	4	2	6	7	6	
30	1	1	2	10	4	9	6	3	
	2	7	2	9	2	6	5	3	
	3	10	1	8	2	5	3	3	
31	1	7	9	8	9	7	4	8	
	2	8	9	7	8	7	4	6	
	3	10	8	7	8	7	2	4	
32	1	8	9	9	8	3	10	8	
	2	9	4	9	8	3	9	6	
	3	10	1	9	6	3	8	4	
33	1	2	6	8	5	4	6	7	
	2	5	6	7	5	4	6	7	
	3	8	6	6	3	4	6	5	
34	1	3	4	6	9	7	2	6	
	2	4	2	6	7	5	2	5	
	3	7	2	6	7	4	2	2	
35	1	4	8	9	6	3	4	9	
	2	5	6	7	4	1	2	8	
	3	6	4	3	1	1	1	7	
36	1	2	7	4	4	8	9	5	
	2	5	7	4	3	5	8	3	
	3	9	6	4	3	5	7	1	
37	1	5	8	4	7	9	9	4	
	2	7	8	4	5	6	9	2	
	3	8	8	4	5	3	9	1	
38	1	2	5	6	7	9	6	7	
	2	3	4	4	4	8	4	7	
	3	6	3	4	2	7	4	6	
39	1	1	6	6	8	7	6	8	
	2	2	5	5	6	6	3	6	
	3	3	3	4	5	4	1	6	
40	1	3	9	1	10	2	5	8	
	2	4	6	1	7	1	4	5	
	3	6	4	1	6	1	2	5	
41	1	1	5	6	4	8	4	5	
	2	5	4	5	2	8	3	5	
	3	6	2	5	2	7	1	2	
42	1	3	10	5	7	3	3	8	
	2	4	9	3	7	3	2	7	
	3	7	9	3	5	3	1	5	
43	1	2	7	3	10	10	9	7	
	2	5	7	3	7	9	8	4	
	3	10	6	3	7	8	7	3	
44	1	3	6	7	5	9	4	2	
	2	4	5	7	3	5	3	1	
	3	10	5	4	3	2	3	1	
45	1	1	6	8	5	2	2	1	
	2	4	4	5	5	1	2	1	
	3	8	4	5	4	1	2	1	
46	1	1	4	5	2	6	8	2	
	2	4	3	4	1	6	5	2	
	3	7	2	4	1	6	5	2	
47	1	3	7	9	6	10	4	9	
	2	5	6	7	5	7	4	7	
	3	6	3	6	5	5	2	3	
48	1	2	6	9	6	5	4	4	
	2	8	5	8	5	4	3	4	
	3	9	2	7	5	4	2	3	
49	1	2	2	8	5	8	6	7	
	2	4	2	8	5	4	4	4	
	3	9	2	8	4	4	3	4	
50	1	2	8	7	9	7	5	5	
	2	4	6	5	5	6	4	5	
	3	6	4	5	5	6	3	5	
51	1	5	6	7	10	8	6	10	
	2	6	2	4	6	4	3	7	
	3	7	1	3	6	1	1	5	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	48	61	257	289	246	257

************************************************************************
