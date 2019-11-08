jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 6 8 11 12 13 14 
2	6	4		18 15 10 5 
3	6	4		21 18 9 7 
4	6	3		19 17 5 
5	6	5		29 28 26 22 9 
6	6	10		36 33 31 30 29 28 26 24 23 16 
7	6	8		33 30 28 24 22 20 17 16 
8	6	7		33 30 28 24 23 22 18 
9	6	7		36 33 31 30 24 23 16 
10	6	6		51 42 33 29 24 23 
11	6	6		51 36 35 33 28 22 
12	6	4		35 24 22 20 
13	6	6		51 40 34 32 31 26 
14	6	5		51 42 35 29 24 
15	6	5		43 35 32 28 27 
16	6	5		51 42 35 27 25 
17	6	4		51 35 27 26 
18	6	2		49 20 
19	6	6		51 49 47 41 31 27 
20	6	7		51 43 42 39 37 34 29 
21	6	6		51 49 42 37 34 29 
22	6	4		50 41 32 27 
23	6	5		43 38 35 34 32 
24	6	4		49 47 43 27 
25	6	5		48 41 40 38 32 
26	6	8		49 47 45 43 42 41 39 37 
27	6	5		40 39 38 37 34 
28	6	7		50 48 46 45 42 41 37 
29	6	6		50 47 46 41 40 38 
30	6	6		50 47 46 42 38 37 
31	6	5		50 48 39 38 35 
32	6	4		49 47 39 37 
33	6	2		49 43 
34	6	2		48 44 
35	6	2		45 44 
36	6	1		40 
37	6	1		44 
38	6	1		45 
39	6	1		46 
40	6	1		45 
41	6	1		44 
42	6	1		44 
43	6	1		44 
44	6	1		52 
45	6	1		52 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	7	13	14	8	19	
	2	13	12	13	7	17	
	3	15	12	11	7	14	
	4	16	11	10	6	14	
	5	18	10	6	6	13	
	6	19	10	6	6	10	
3	1	5	7	12	11	11	
	2	6	5	10	9	9	
	3	7	5	9	9	8	
	4	10	4	5	8	7	
	5	12	3	3	4	6	
	6	17	2	2	3	5	
4	1	3	7	12	18	15	
	2	7	7	10	15	14	
	3	8	7	9	11	13	
	4	10	7	7	8	11	
	5	12	7	6	5	10	
	6	15	7	5	4	9	
5	1	2	15	3	8	17	
	2	9	12	3	7	15	
	3	10	9	3	7	12	
	4	13	8	2	6	11	
	5	16	5	2	5	10	
	6	20	1	2	5	8	
6	1	1	6	12	12	6	
	2	2	5	12	11	5	
	3	3	5	9	10	5	
	4	15	3	7	7	5	
	5	16	3	4	6	3	
	6	17	2	3	6	3	
7	1	1	11	18	2	8	
	2	3	9	15	1	7	
	3	8	8	10	1	7	
	4	17	5	9	1	7	
	5	18	3	6	1	7	
	6	20	3	4	1	7	
8	1	2	6	11	18	19	
	2	7	5	8	17	17	
	3	8	5	8	14	15	
	4	11	5	5	12	13	
	5	12	5	5	10	10	
	6	14	5	3	8	7	
9	1	1	17	19	20	12	
	2	7	15	15	18	12	
	3	8	13	15	18	11	
	4	11	12	11	17	8	
	5	12	11	11	17	7	
	6	18	9	7	16	5	
10	1	2	16	10	20	10	
	2	3	15	10	19	10	
	3	9	11	8	19	10	
	4	10	8	8	19	9	
	5	15	7	7	19	9	
	6	18	3	5	19	9	
11	1	8	5	15	4	14	
	2	13	5	13	4	13	
	3	15	3	12	3	12	
	4	18	3	10	3	11	
	5	19	1	10	1	8	
	6	20	1	9	1	8	
12	1	3	15	8	17	17	
	2	7	14	8	17	15	
	3	8	12	8	17	14	
	4	13	12	8	17	12	
	5	17	10	8	16	12	
	6	19	8	8	16	9	
13	1	8	17	15	18	17	
	2	11	17	14	18	17	
	3	12	17	14	18	16	
	4	13	17	12	17	17	
	5	15	17	12	17	16	
	6	16	17	10	16	17	
14	1	4	13	17	5	7	
	2	7	12	16	4	6	
	3	8	11	15	4	6	
	4	13	11	13	4	4	
	5	14	10	12	4	3	
	6	15	9	12	4	3	
15	1	5	4	13	1	9	
	2	8	4	12	1	9	
	3	12	3	12	1	8	
	4	13	2	12	1	7	
	5	16	2	12	1	6	
	6	20	1	12	1	5	
16	1	6	13	12	17	4	
	2	10	13	11	16	3	
	3	13	13	10	16	3	
	4	14	12	9	14	2	
	5	15	12	7	13	2	
	6	20	12	6	13	1	
17	1	1	16	15	2	18	
	2	2	15	12	2	15	
	3	11	13	11	2	13	
	4	12	11	8	2	11	
	5	13	8	6	2	10	
	6	14	5	6	2	8	
18	1	4	7	19	9	13	
	2	7	6	15	8	10	
	3	11	5	13	8	9	
	4	13	4	11	7	8	
	5	14	3	10	5	6	
	6	18	2	6	5	6	
19	1	3	18	9	5	4	
	2	4	18	9	4	3	
	3	5	16	8	4	3	
	4	6	15	8	4	2	
	5	7	15	7	3	2	
	6	19	14	6	3	2	
20	1	6	19	11	11	16	
	2	13	18	9	7	16	
	3	15	18	9	7	15	
	4	16	18	8	6	15	
	5	17	18	6	3	15	
	6	18	18	6	1	14	
21	1	2	13	15	15	20	
	2	10	12	12	12	19	
	3	13	11	12	11	19	
	4	15	11	7	11	19	
	5	16	11	4	9	19	
	6	17	10	2	8	19	
22	1	5	12	9	14	7	
	2	6	10	7	13	5	
	3	12	9	7	12	5	
	4	15	6	6	10	5	
	5	19	4	4	10	4	
	6	20	2	4	9	3	
23	1	3	13	11	15	17	
	2	4	11	11	15	17	
	3	17	8	9	13	17	
	4	18	7	9	12	17	
	5	19	4	8	11	17	
	6	20	3	6	11	17	
24	1	1	15	6	12	18	
	2	2	15	6	11	17	
	3	3	14	6	11	15	
	4	5	14	6	11	14	
	5	14	14	6	9	13	
	6	18	13	6	9	13	
25	1	5	6	14	20	17	
	2	6	5	14	17	16	
	3	7	4	10	14	16	
	4	9	2	9	10	16	
	5	12	1	5	8	16	
	6	13	1	4	7	16	
26	1	3	14	16	18	8	
	2	4	13	15	16	7	
	3	5	12	13	15	6	
	4	18	12	13	12	4	
	5	19	11	12	11	2	
	6	20	10	10	10	2	
27	1	1	17	14	20	3	
	2	8	16	9	16	3	
	3	9	15	9	16	3	
	4	10	14	5	13	2	
	5	13	13	4	11	2	
	6	14	13	1	11	1	
28	1	4	8	19	4	13	
	2	7	7	19	4	13	
	3	10	7	19	4	11	
	4	12	6	19	4	9	
	5	15	6	19	4	8	
	6	19	6	19	4	7	
29	1	2	13	18	14	9	
	2	11	12	18	13	8	
	3	15	10	18	12	7	
	4	17	9	18	10	7	
	5	18	8	18	7	7	
	6	19	8	18	6	6	
30	1	1	14	12	17	19	
	2	5	13	12	16	19	
	3	10	10	10	15	19	
	4	14	10	10	11	19	
	5	15	7	9	9	19	
	6	17	6	8	7	19	
31	1	1	18	19	18	6	
	2	5	16	17	17	6	
	3	8	15	14	16	4	
	4	10	13	12	13	4	
	5	17	11	10	12	2	
	6	19	10	8	11	1	
32	1	2	10	16	3	9	
	2	6	10	13	2	9	
	3	9	9	11	2	9	
	4	10	8	11	2	9	
	5	11	6	5	1	9	
	6	20	5	4	1	9	
33	1	1	19	18	13	15	
	2	6	17	17	10	15	
	3	7	15	15	9	15	
	4	11	11	14	6	14	
	5	14	10	10	6	14	
	6	19	9	9	3	14	
34	1	1	19	17	20	20	
	2	4	18	17	19	19	
	3	14	17	16	18	18	
	4	17	17	16	18	17	
	5	18	17	15	16	18	
	6	20	16	15	16	17	
35	1	1	12	12	19	18	
	2	5	10	12	16	16	
	3	7	10	10	15	15	
	4	8	8	8	15	12	
	5	12	8	5	14	10	
	6	15	7	5	12	10	
36	1	7	18	13	15	19	
	2	8	17	13	14	18	
	3	12	17	12	13	16	
	4	14	17	10	11	16	
	5	15	16	9	10	14	
	6	16	15	7	10	13	
37	1	7	17	14	16	9	
	2	13	17	14	15	9	
	3	14	17	13	13	9	
	4	15	17	13	9	9	
	5	16	17	13	8	9	
	6	20	17	12	7	9	
38	1	5	19	13	19	13	
	2	12	17	11	17	12	
	3	13	16	10	13	12	
	4	14	16	8	13	12	
	5	19	14	7	9	12	
	6	20	13	7	8	12	
39	1	1	17	14	18	6	
	2	5	15	13	18	6	
	3	6	14	13	14	6	
	4	12	9	12	12	6	
	5	15	7	10	10	6	
	6	19	3	10	10	6	
40	1	1	7	18	19	16	
	2	14	7	18	13	14	
	3	15	7	14	13	12	
	4	16	7	12	9	8	
	5	19	7	11	8	5	
	6	20	7	9	5	1	
41	1	4	7	13	12	13	
	2	8	6	12	11	12	
	3	9	5	10	11	10	
	4	15	5	8	10	9	
	5	16	4	7	8	7	
	6	19	3	5	8	6	
42	1	3	19	10	8	13	
	2	9	17	9	8	13	
	3	13	16	9	8	13	
	4	17	14	7	7	13	
	5	18	11	6	7	13	
	6	19	10	6	6	13	
43	1	3	8	10	14	14	
	2	9	8	9	13	13	
	3	10	6	9	12	13	
	4	11	4	6	11	12	
	5	15	3	4	9	12	
	6	19	2	4	8	12	
44	1	2	17	13	8	20	
	2	4	15	12	7	15	
	3	8	15	11	7	13	
	4	13	14	10	6	13	
	5	18	13	9	5	8	
	6	19	13	8	5	7	
45	1	4	4	15	17	13	
	2	5	4	13	16	13	
	3	7	4	10	12	10	
	4	10	4	9	10	7	
	5	16	4	5	10	7	
	6	20	4	5	7	5	
46	1	5	12	10	20	14	
	2	6	10	9	17	14	
	3	11	8	8	13	12	
	4	12	7	8	11	12	
	5	16	7	7	8	11	
	6	19	6	7	5	10	
47	1	11	3	8	5	12	
	2	12	2	7	5	11	
	3	13	2	6	5	10	
	4	14	1	6	5	10	
	5	15	1	5	5	9	
	6	18	1	4	5	9	
48	1	2	12	19	14	6	
	2	4	10	16	10	5	
	3	7	10	13	9	5	
	4	8	9	10	7	4	
	5	11	7	6	6	4	
	6	17	7	5	2	4	
49	1	2	19	15	16	17	
	2	3	18	13	16	15	
	3	8	15	10	16	14	
	4	10	13	8	16	12	
	5	14	10	6	16	11	
	6	15	10	3	16	8	
50	1	2	6	7	16	16	
	2	9	5	7	14	15	
	3	11	4	7	14	15	
	4	12	4	7	11	15	
	5	13	2	6	10	14	
	6	16	2	6	8	14	
51	1	2	10	15	20	7	
	2	3	10	14	20	6	
	3	13	9	12	20	6	
	4	15	9	12	20	5	
	5	17	9	10	20	6	
	6	18	8	10	20	6	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	83	83	455	480

************************************************************************
