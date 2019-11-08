jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 5 6 9 11 
2	6	4		17 12 10 7 
3	6	4		17 15 8 7 
4	6	5		25 23 17 14 12 
5	6	4		25 23 14 12 
6	6	4		19 17 16 12 
7	6	4		25 23 18 13 
8	6	2		14 13 
9	6	1		10 
10	6	4		25 21 20 14 
11	6	4		23 18 17 16 
12	6	3		22 20 15 
13	6	5		30 22 21 20 19 
14	6	3		26 18 16 
15	6	4		31 26 21 18 
16	6	4		31 30 24 22 
17	6	3		31 26 22 
18	6	4		30 29 27 24 
19	6	4		35 31 29 26 
20	6	3		29 26 24 
21	6	2		29 24 
22	6	4		35 29 28 27 
23	6	1		24 
24	6	4		35 34 32 28 
25	6	4		34 32 30 28 
26	6	3		34 32 28 
27	6	4		42 39 36 34 
28	6	3		37 36 33 
29	6	3		37 36 33 
30	6	3		37 36 33 
31	6	2		42 34 
32	6	4		43 39 38 36 
33	6	5		47 43 42 40 38 
34	6	5		51 47 43 40 38 
35	6	2		42 36 
36	6	4		51 47 44 41 
37	6	3		46 43 42 
38	6	3		45 44 41 
39	6	3		45 44 41 
40	6	3		50 45 44 
41	6	3		50 48 46 
42	6	3		50 49 45 
43	6	2		48 44 
44	6	1		49 
45	6	1		48 
46	6	1		49 
47	6	1		48 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	6	20	13	17	8	10	15	
	2	7	16	12	15	8	9	14	
	3	8	14	10	14	8	8	14	
	4	14	12	9	14	8	6	13	
	5	16	9	8	13	8	5	12	
	6	19	6	8	11	8	5	11	
3	1	3	12	20	16	10	10	14	
	2	13	11	16	12	8	9	14	
	3	15	10	15	10	8	8	13	
	4	16	9	15	8	7	8	11	
	5	17	8	12	7	7	7	10	
	6	18	7	11	4	6	6	10	
4	1	4	18	8	10	18	11	12	
	2	9	18	7	9	17	11	11	
	3	12	17	7	7	16	11	11	
	4	13	17	7	7	15	11	10	
	5	15	16	6	5	14	10	9	
	6	18	16	6	4	13	10	8	
5	1	1	8	10	14	17	12	12	
	2	2	7	7	14	13	11	12	
	3	7	7	7	14	12	11	12	
	4	8	6	5	13	8	9	12	
	5	11	6	3	13	6	8	12	
	6	12	6	2	13	6	8	12	
6	1	2	16	17	16	17	18	11	
	2	3	16	15	14	16	16	11	
	3	4	16	12	12	11	13	11	
	4	6	16	11	12	7	10	11	
	5	11	15	8	10	5	8	10	
	6	12	15	6	10	3	7	10	
7	1	2	15	3	14	6	10	17	
	2	4	15	3	14	5	10	16	
	3	7	14	3	14	5	10	11	
	4	12	14	3	14	5	10	10	
	5	14	13	2	14	4	10	7	
	6	17	13	2	14	4	10	6	
8	1	1	20	19	11	18	12	4	
	2	8	15	19	10	17	12	3	
	3	11	13	17	10	15	11	3	
	4	14	12	16	9	14	11	3	
	5	15	9	15	8	14	11	2	
	6	16	9	15	7	13	10	2	
9	1	3	17	16	17	9	14	9	
	2	8	17	15	16	8	11	9	
	3	11	16	13	16	8	10	9	
	4	15	16	12	15	8	8	9	
	5	16	15	12	15	8	7	9	
	6	19	15	10	14	8	5	9	
10	1	11	16	19	18	19	11	7	
	2	12	15	18	18	16	9	6	
	3	15	15	18	18	14	6	6	
	4	17	15	18	17	13	5	5	
	5	19	15	18	17	11	3	4	
	6	20	15	18	17	7	2	2	
11	1	3	12	13	3	12	14	16	
	2	5	10	12	2	10	13	16	
	3	8	8	11	2	9	9	10	
	4	16	6	8	2	9	9	7	
	5	17	6	7	1	8	6	7	
	6	20	4	6	1	7	4	3	
12	1	3	18	16	18	20	10	17	
	2	4	17	12	13	17	9	14	
	3	5	13	10	12	12	7	12	
	4	6	10	10	10	8	6	12	
	5	7	9	5	7	7	5	10	
	6	8	5	4	5	3	4	7	
13	1	3	14	10	14	8	15	14	
	2	8	12	9	12	8	15	13	
	3	9	11	8	11	7	14	13	
	4	10	9	8	8	6	14	12	
	5	15	6	6	5	5	13	12	
	6	18	5	6	3	5	12	11	
14	1	10	13	16	18	5	16	9	
	2	11	12	14	18	5	14	8	
	3	17	12	10	16	5	12	7	
	4	18	11	9	15	4	11	4	
	5	19	11	6	14	4	7	2	
	6	20	11	4	14	3	7	2	
15	1	3	13	16	11	16	15	14	
	2	4	11	15	11	15	14	14	
	3	5	7	15	10	13	12	14	
	4	14	5	15	10	11	11	14	
	5	15	3	14	10	9	10	14	
	6	17	2	14	9	7	10	14	
16	1	1	15	17	8	7	13	7	
	2	5	14	16	8	5	12	5	
	3	9	14	12	7	4	11	4	
	4	10	14	10	7	3	11	3	
	5	19	13	7	5	2	9	3	
	6	20	13	3	5	2	9	2	
17	1	1	15	17	10	17	10	15	
	2	6	12	15	9	16	10	12	
	3	10	12	14	9	11	10	9	
	4	11	6	10	8	9	9	8	
	5	12	5	8	7	5	8	7	
	6	13	2	7	5	1	8	4	
18	1	2	16	16	19	18	9	20	
	2	3	13	15	17	17	9	18	
	3	10	11	14	12	17	8	16	
	4	13	7	14	10	16	8	14	
	5	18	5	12	9	16	8	11	
	6	19	4	12	6	16	7	9	
19	1	2	18	10	10	16	7	17	
	2	9	17	9	9	16	7	16	
	3	11	16	9	8	14	7	15	
	4	12	16	9	7	13	6	12	
	5	13	14	8	4	12	5	10	
	6	19	14	8	4	12	5	9	
20	1	3	16	12	15	8	10	10	
	2	5	16	11	15	7	8	7	
	3	8	16	10	15	7	7	7	
	4	9	16	10	15	7	6	4	
	5	12	16	8	15	7	4	3	
	6	20	16	7	15	7	4	1	
21	1	11	11	17	18	15	16	15	
	2	12	10	14	17	14	16	14	
	3	13	10	10	15	12	10	14	
	4	15	8	9	13	10	8	13	
	5	16	7	6	13	10	6	13	
	6	19	7	3	12	8	4	13	
22	1	5	14	20	18	12	17	13	
	2	6	12	18	16	12	17	11	
	3	7	10	14	15	11	13	9	
	4	10	9	13	13	8	11	7	
	5	14	7	12	9	6	9	6	
	6	15	6	8	7	5	7	5	
23	1	12	20	11	16	12	16	16	
	2	13	16	11	14	12	15	15	
	3	14	16	9	11	12	15	12	
	4	15	14	8	10	12	15	10	
	5	16	12	8	9	11	14	8	
	6	17	10	7	7	11	14	6	
24	1	9	19	17	6	16	7	11	
	2	15	17	15	6	14	6	10	
	3	17	13	13	5	13	6	10	
	4	18	11	12	5	10	6	10	
	5	19	10	11	5	7	6	10	
	6	20	9	10	4	6	6	10	
25	1	3	10	18	13	10	19	18	
	2	4	9	15	11	9	18	15	
	3	5	8	13	9	8	18	14	
	4	6	6	10	9	8	17	11	
	5	14	5	8	7	7	16	7	
	6	19	4	8	5	5	16	5	
26	1	3	18	5	18	12	8	11	
	2	4	14	4	17	10	8	11	
	3	9	12	4	17	10	8	11	
	4	11	8	3	17	9	8	11	
	5	17	7	2	17	7	8	11	
	6	20	3	2	17	6	8	11	
27	1	3	8	6	9	17	4	9	
	2	4	7	6	7	17	3	9	
	3	6	7	6	7	16	2	9	
	4	7	7	6	6	16	2	9	
	5	14	7	6	5	16	2	9	
	6	16	7	6	5	15	1	9	
28	1	2	16	17	18	10	16	10	
	2	5	14	14	17	9	16	9	
	3	7	14	12	17	9	14	6	
	4	10	13	9	16	8	13	6	
	5	13	10	8	15	8	11	4	
	6	19	8	6	13	7	9	3	
29	1	8	15	18	19	18	11	20	
	2	13	13	16	18	16	10	19	
	3	14	10	15	18	16	9	18	
	4	15	8	15	16	15	9	18	
	5	16	4	14	15	13	9	17	
	6	19	1	13	15	13	8	17	
30	1	3	18	9	17	15	7	19	
	2	7	16	8	14	14	6	19	
	3	8	14	6	14	13	6	19	
	4	9	11	6	10	12	6	19	
	5	14	8	4	10	12	4	19	
	6	19	4	4	6	10	4	19	
31	1	1	14	13	18	4	19	5	
	2	9	12	12	15	3	17	5	
	3	10	11	12	13	3	17	5	
	4	18	10	12	10	2	15	5	
	5	19	7	12	9	2	15	5	
	6	20	7	12	6	1	14	5	
32	1	3	10	9	7	19	15	4	
	2	6	8	9	7	18	15	3	
	3	8	7	9	6	18	12	3	
	4	9	7	8	6	18	10	2	
	5	11	4	7	5	17	9	1	
	6	18	3	7	5	17	8	1	
33	1	5	17	18	15	11	14	16	
	2	6	15	17	12	9	13	15	
	3	10	12	15	11	7	13	14	
	4	11	10	15	10	7	13	13	
	5	12	10	12	7	5	13	12	
	6	18	8	12	4	5	13	11	
34	1	4	19	10	20	17	13	18	
	2	5	18	9	19	15	12	17	
	3	8	18	8	19	12	12	16	
	4	13	17	7	19	10	11	15	
	5	17	16	5	18	9	11	15	
	6	19	15	5	18	7	11	14	
35	1	3	5	5	14	3	17	15	
	2	4	5	5	14	3	16	13	
	3	8	5	5	13	3	13	13	
	4	13	5	4	11	2	11	8	
	5	14	5	4	10	1	11	6	
	6	16	5	4	8	1	9	4	
36	1	2	12	18	3	6	4	14	
	2	4	9	18	3	6	4	13	
	3	5	9	18	3	6	3	12	
	4	6	7	18	3	6	3	9	
	5	16	5	18	3	6	3	9	
	6	18	4	18	3	6	2	6	
37	1	3	16	10	20	11	17	20	
	2	5	15	8	18	11	17	18	
	3	8	14	8	17	11	17	17	
	4	9	12	7	17	10	16	15	
	5	17	12	6	15	9	16	12	
	6	20	10	6	14	9	16	11	
38	1	6	12	18	17	14	13	5	
	2	7	11	16	17	14	13	4	
	3	9	11	15	14	14	13	4	
	4	10	11	11	13	14	13	3	
	5	14	11	9	9	14	13	2	
	6	17	11	9	6	14	13	2	
39	1	4	17	13	16	14	16	11	
	2	11	16	13	16	14	14	10	
	3	13	16	13	15	10	13	10	
	4	17	15	13	13	9	12	9	
	5	19	13	13	12	7	11	9	
	6	20	13	13	11	5	8	8	
40	1	1	8	4	18	13	12	13	
	2	3	6	4	16	11	12	11	
	3	4	5	4	14	11	12	10	
	4	15	4	4	14	11	12	8	
	5	16	3	4	12	10	12	6	
	6	19	3	4	11	9	12	4	
41	1	1	12	10	6	11	10	13	
	2	4	11	9	5	10	9	11	
	3	9	9	7	5	9	8	9	
	4	11	8	6	5	7	6	8	
	5	12	7	6	5	6	6	6	
	6	20	7	5	5	6	5	5	
42	1	9	11	13	16	11	19	13	
	2	10	11	11	14	10	18	13	
	3	11	10	11	10	9	17	13	
	4	13	9	9	7	9	17	13	
	5	16	8	9	3	8	16	12	
	6	17	8	7	2	8	16	12	
43	1	1	13	17	20	20	7	14	
	2	8	13	15	18	18	7	13	
	3	9	13	12	18	18	6	12	
	4	12	12	11	16	17	4	12	
	5	13	12	9	15	16	4	10	
	6	20	12	6	15	15	2	10	
44	1	2	11	7	16	18	19	5	
	2	6	9	5	15	18	18	5	
	3	11	9	4	15	16	18	3	
	4	13	6	4	13	16	16	3	
	5	14	6	2	13	15	15	1	
	6	19	3	1	12	14	15	1	
45	1	5	19	8	12	10	18	7	
	2	7	15	7	11	10	17	5	
	3	8	15	6	8	9	17	5	
	4	9	13	6	8	7	17	4	
	5	10	11	5	7	7	17	4	
	6	11	8	5	4	5	17	3	
46	1	2	4	17	17	6	11	12	
	2	7	4	14	16	5	10	11	
	3	8	4	13	12	5	9	9	
	4	9	4	13	9	4	7	6	
	5	16	4	11	7	2	6	3	
	6	19	4	10	4	1	4	3	
47	1	1	9	12	17	14	17	18	
	2	5	8	12	17	11	14	15	
	3	9	7	11	15	9	14	15	
	4	13	6	11	14	9	10	12	
	5	16	5	9	14	6	8	10	
	6	20	4	9	12	6	8	7	
48	1	3	13	14	5	17	15	17	
	2	5	13	13	4	14	15	17	
	3	7	9	13	3	13	13	17	
	4	9	8	12	3	11	9	16	
	5	18	6	11	2	11	8	15	
	6	19	2	10	2	10	5	15	
49	1	2	16	16	18	15	3	15	
	2	8	13	15	16	15	2	11	
	3	11	8	13	14	15	2	9	
	4	12	8	13	11	14	2	6	
	5	13	4	11	10	14	2	4	
	6	19	3	11	8	13	2	3	
50	1	2	17	19	5	16	15	11	
	2	8	16	16	5	15	15	10	
	3	9	14	16	5	14	14	10	
	4	10	13	15	5	14	14	9	
	5	12	13	13	5	13	14	8	
	6	20	12	12	5	13	13	8	
51	1	6	18	7	18	18	14	17	
	2	10	18	7	14	13	11	13	
	3	15	17	7	12	10	10	10	
	4	16	15	7	7	9	10	10	
	5	18	15	6	3	4	8	7	
	6	19	13	6	2	2	6	4	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	40	39	634	586	579	575

************************************************************************
