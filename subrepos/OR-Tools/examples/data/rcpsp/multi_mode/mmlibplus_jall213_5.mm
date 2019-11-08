jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 5 6 9 14 
2	6	3		10 8 7 
3	6	2		8 7 
4	6	4		17 15 13 12 
5	6	3		16 15 11 
6	6	3		17 15 12 
7	6	2		13 12 
8	6	2		18 11 
9	6	2		13 12 
10	6	1		13 
11	6	4		25 20 19 17 
12	6	2		19 16 
13	6	2		19 16 
14	6	2		19 16 
15	6	6		26 25 23 22 20 19 
16	6	7		28 26 25 23 22 21 20 
17	6	7		31 30 28 26 23 22 21 
18	6	7		31 30 28 26 25 23 22 
19	6	4		31 30 28 21 
20	6	5		33 32 31 30 24 
21	6	2		32 24 
22	6	1		24 
23	6	7		47 39 36 35 34 33 32 
24	6	4		36 35 29 27 
25	6	4		36 32 29 27 
26	6	6		47 37 36 35 32 29 
27	6	4		47 46 37 34 
28	6	7		51 47 46 42 41 40 38 
29	6	4		42 39 38 34 
30	6	3		38 37 36 
31	6	3		46 45 37 
32	6	4		51 42 41 38 
33	6	2		46 37 
34	6	4		51 45 41 40 
35	6	4		51 45 42 40 
36	6	4		51 50 45 41 
37	6	3		51 42 40 
38	6	4		50 45 44 43 
39	6	3		51 45 43 
40	6	3		50 49 44 
41	6	2		44 43 
42	6	1		43 
43	6	2		49 48 
44	6	1		48 
45	6	1		49 
46	6	1		48 
47	6	1		48 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	4	27	23	27	13	27	9	23	20	
	2	17	25	20	27	11	19	8	22	18	
	3	18	21	17	27	8	17	6	21	17	
	4	21	18	15	27	6	11	5	21	16	
	5	22	17	14	26	4	8	4	20	12	
	6	28	15	13	26	3	3	4	20	12	
3	1	1	18	22	10	24	25	29	28	23	
	2	15	14	21	7	24	20	21	28	22	
	3	19	13	18	6	21	20	21	27	22	
	4	21	11	14	5	19	13	15	27	21	
	5	23	6	10	4	18	12	13	26	21	
	6	27	4	8	2	16	8	10	26	20	
4	1	1	23	20	26	12	24	23	18	28	
	2	6	19	18	25	11	21	22	17	24	
	3	7	16	16	24	11	21	20	15	20	
	4	25	14	14	24	10	16	19	13	19	
	5	28	12	11	23	10	15	18	10	15	
	6	30	10	10	23	10	11	18	8	14	
5	1	1	25	22	14	9	21	16	17	27	
	2	5	24	22	13	9	20	11	16	23	
	3	10	21	17	13	7	16	9	16	20	
	4	11	21	13	13	6	11	8	16	20	
	5	16	20	12	12	4	9	4	15	16	
	6	27	17	9	12	3	6	2	15	12	
6	1	9	19	4	22	26	4	15	23	7	
	2	14	18	3	21	21	3	13	21	6	
	3	24	18	3	20	15	3	10	20	5	
	4	26	18	2	19	13	2	6	18	4	
	5	27	17	2	16	8	2	4	17	4	
	6	28	17	2	15	7	2	3	17	3	
7	1	2	16	29	1	14	28	27	23	28	
	2	4	14	27	1	12	24	25	21	26	
	3	6	13	27	1	12	22	24	21	22	
	4	7	13	24	1	11	21	22	20	20	
	5	15	12	22	1	9	18	22	19	17	
	6	19	11	21	1	8	13	20	19	15	
8	1	8	16	13	25	17	20	20	13	23	
	2	15	15	11	20	15	18	19	12	21	
	3	16	15	11	17	14	18	16	11	18	
	4	19	15	7	17	13	17	14	10	16	
	5	20	14	7	12	10	15	9	8	10	
	6	21	14	4	10	9	15	5	7	7	
9	1	2	22	29	17	25	30	21	27	26	
	2	3	22	27	15	22	27	19	24	26	
	3	4	20	24	12	22	27	18	18	25	
	4	11	19	21	10	20	25	18	17	24	
	5	18	18	19	7	18	24	17	15	23	
	6	24	17	19	4	17	23	15	12	23	
10	1	2	23	21	22	28	28	27	13	21	
	2	3	23	18	19	24	23	19	9	17	
	3	10	20	16	17	19	16	16	9	17	
	4	20	19	13	17	16	14	11	7	13	
	5	27	17	10	14	12	7	9	4	7	
	6	30	16	8	13	8	5	7	3	2	
11	1	1	12	7	24	13	12	12	20	22	
	2	11	11	6	20	10	9	9	16	18	
	3	12	11	5	18	9	8	8	15	14	
	4	13	9	3	13	5	6	6	10	10	
	5	14	8	2	10	4	5	5	8	6	
	6	23	8	2	9	2	3	4	6	2	
12	1	4	24	23	2	28	23	29	23	23	
	2	8	24	22	1	23	19	27	22	17	
	3	22	23	22	1	21	15	26	22	16	
	4	23	23	22	1	15	15	26	20	12	
	5	29	21	22	1	11	10	24	19	10	
	6	30	21	22	1	7	9	22	17	7	
13	1	15	19	27	4	21	18	27	26	23	
	2	16	18	21	4	19	15	27	21	19	
	3	22	16	20	3	17	14	24	18	15	
	4	23	14	17	2	14	13	24	15	15	
	5	24	14	15	1	11	10	23	11	10	
	6	30	12	9	1	11	7	21	10	9	
14	1	2	2	12	29	13	28	26	28	18	
	2	5	2	11	28	12	28	22	24	18	
	3	15	2	10	27	11	28	15	20	16	
	4	17	2	8	27	8	27	12	15	16	
	5	23	2	7	26	6	27	8	11	14	
	6	26	2	5	26	5	27	7	9	14	
15	1	8	19	25	9	11	30	25	16	29	
	2	9	17	24	7	10	29	23	16	28	
	3	15	16	20	7	10	29	22	16	28	
	4	20	14	18	6	9	29	19	16	27	
	5	21	14	18	5	9	28	18	16	27	
	6	22	12	14	4	9	28	16	16	26	
16	1	1	20	29	17	24	29	18	8	26	
	2	2	16	28	17	24	24	18	8	25	
	3	3	15	28	17	24	22	16	6	24	
	4	6	12	28	16	24	19	15	6	21	
	5	9	9	27	16	24	16	15	4	18	
	6	22	7	27	16	24	12	14	3	17	
17	1	1	12	10	26	28	18	28	17	21	
	2	6	9	8	26	21	18	27	16	21	
	3	10	7	8	26	18	18	26	14	16	
	4	15	5	7	26	16	18	24	13	15	
	5	25	4	4	26	9	18	24	12	9	
	6	26	1	2	26	6	18	23	10	7	
18	1	5	14	23	22	20	19	24	19	22	
	2	7	13	21	22	19	13	23	14	22	
	3	15	12	19	18	19	13	21	14	22	
	4	19	12	18	12	19	8	20	10	21	
	5	21	11	17	6	18	7	16	6	21	
	6	26	9	15	6	18	4	15	4	21	
19	1	6	7	27	9	21	27	11	27	29	
	2	7	6	27	9	17	26	10	27	27	
	3	17	6	27	9	15	22	9	27	25	
	4	19	6	27	9	14	19	7	27	24	
	5	20	5	27	8	13	16	7	27	21	
	6	23	5	27	8	11	13	6	27	20	
20	1	7	19	28	23	25	2	28	17	25	
	2	8	19	25	22	22	2	25	17	22	
	3	13	18	22	20	21	2	22	17	22	
	4	16	17	16	16	17	2	21	16	19	
	5	28	17	15	14	16	1	17	16	15	
	6	29	16	12	11	13	1	15	16	12	
21	1	4	13	20	27	14	26	15	25	6	
	2	5	13	18	24	12	24	13	24	6	
	3	10	12	17	24	11	20	12	23	5	
	4	20	12	14	23	9	18	12	22	5	
	5	21	10	13	20	6	14	11	19	5	
	6	23	10	10	19	6	14	10	18	4	
22	1	3	23	25	20	20	5	5	15	23	
	2	6	20	23	18	19	4	4	14	19	
	3	18	14	20	16	19	3	4	11	14	
	4	19	12	18	13	18	2	4	9	11	
	5	26	8	16	12	17	1	4	7	8	
	6	27	4	13	9	16	1	4	4	3	
23	1	1	25	27	13	24	14	23	15	6	
	2	18	25	25	12	23	12	22	13	6	
	3	20	25	25	10	23	8	22	11	6	
	4	21	24	23	10	23	8	22	9	6	
	5	23	23	23	8	23	4	22	6	5	
	6	25	23	22	7	23	3	22	4	5	
24	1	3	7	5	25	16	14	26	19	6	
	2	6	7	5	21	12	13	25	19	6	
	3	14	5	5	17	11	12	23	18	6	
	4	18	4	5	15	9	12	20	18	5	
	5	25	4	5	14	7	10	19	18	5	
	6	29	2	5	9	6	10	17	17	5	
25	1	16	15	24	10	28	15	13	30	25	
	2	17	13	23	9	26	14	11	28	24	
	3	18	13	17	8	26	13	10	26	24	
	4	19	12	15	8	24	11	8	24	22	
	5	20	10	14	7	24	10	7	23	22	
	6	30	10	11	6	23	10	6	23	21	
26	1	1	28	20	10	20	8	27	24	8	
	2	2	22	18	10	20	6	23	22	8	
	3	4	21	16	10	17	5	20	22	8	
	4	9	16	14	9	17	3	18	20	8	
	5	14	11	12	8	14	2	15	20	8	
	6	29	8	11	8	14	2	13	19	8	
27	1	5	17	28	18	26	18	24	19	23	
	2	11	17	23	16	25	17	23	16	22	
	3	14	16	21	16	22	12	17	15	22	
	4	17	16	17	16	16	11	12	13	21	
	5	18	15	14	14	15	9	10	10	19	
	6	22	15	11	14	12	4	3	9	19	
28	1	1	24	25	28	22	22	22	29	23	
	2	4	23	20	19	18	20	22	27	22	
	3	7	23	18	18	13	18	21	27	21	
	4	18	23	14	11	12	10	20	26	21	
	5	19	23	9	9	7	9	18	24	19	
	6	20	23	7	6	3	5	17	24	18	
29	1	6	12	10	30	5	30	17	26	5	
	2	8	11	10	28	5	27	16	25	5	
	3	14	8	10	27	5	24	16	23	4	
	4	17	8	9	26	5	23	13	23	4	
	5	21	5	9	25	5	21	13	21	4	
	6	26	4	9	25	5	18	12	19	3	
30	1	3	25	7	6	28	27	19	25	17	
	2	4	18	6	4	27	27	14	21	15	
	3	11	14	5	4	24	24	14	18	12	
	4	15	10	5	3	19	21	12	11	7	
	5	26	6	3	3	18	15	9	8	6	
	6	27	4	3	2	15	14	5	6	4	
31	1	5	20	26	22	30	8	26	9	13	
	2	6	20	24	21	27	8	25	8	11	
	3	11	19	22	19	25	7	24	8	10	
	4	12	19	19	16	21	5	23	8	9	
	5	13	17	18	15	21	2	23	7	7	
	6	21	17	15	12	19	1	21	6	7	
32	1	9	22	24	28	27	26	8	23	10	
	2	15	21	24	28	27	26	7	23	10	
	3	16	21	17	26	27	25	7	21	10	
	4	17	20	12	22	27	24	4	18	10	
	5	20	19	11	20	26	22	3	15	10	
	6	28	17	8	18	26	21	3	15	10	
33	1	14	25	13	9	23	10	6	21	26	
	2	15	25	13	7	19	9	6	20	23	
	3	19	25	11	7	13	8	6	20	21	
	4	20	25	10	7	9	7	6	18	20	
	5	24	25	7	5	8	5	6	17	19	
	6	29	25	5	5	3	4	6	17	15	
34	1	7	23	24	20	29	16	28	21	24	
	2	12	20	22	19	22	15	26	19	24	
	3	18	19	22	19	19	15	25	18	19	
	4	19	17	21	17	12	14	24	17	15	
	5	21	16	20	15	8	14	23	15	13	
	6	27	14	20	15	5	13	21	15	12	
35	1	2	4	28	17	20	9	27	25	21	
	2	3	3	28	14	20	7	25	21	20	
	3	15	3	28	13	20	7	23	16	18	
	4	16	3	28	9	20	5	17	10	14	
	5	21	2	28	7	20	5	16	7	10	
	6	25	2	28	6	20	4	11	2	6	
36	1	10	26	8	29	3	26	23	6	21	
	2	17	24	7	29	2	22	22	6	18	
	3	22	22	6	29	2	20	21	6	15	
	4	23	22	5	29	1	17	21	6	13	
	5	24	20	4	29	1	14	20	6	8	
	6	30	19	4	29	1	11	20	6	4	
37	1	5	22	10	14	21	27	7	6	28	
	2	8	20	8	12	20	26	7	6	23	
	3	12	19	7	12	19	23	7	5	19	
	4	13	16	5	10	19	20	7	4	14	
	5	18	15	3	10	18	14	6	2	8	
	6	29	11	2	9	17	13	6	2	4	
38	1	3	17	16	21	13	19	25	16	26	
	2	6	17	12	19	12	17	23	15	24	
	3	7	16	11	19	11	15	19	14	24	
	4	12	15	8	17	11	15	17	12	22	
	5	13	14	5	15	9	11	13	10	21	
	6	25	13	3	13	9	11	11	9	21	
39	1	19	28	13	29	29	18	21	23	29	
	2	20	25	10	24	22	18	20	20	27	
	3	25	23	9	24	18	17	19	18	26	
	4	28	23	8	20	15	17	17	16	24	
	5	29	19	7	16	9	16	16	14	23	
	6	30	18	4	15	9	16	15	14	23	
40	1	6	28	8	28	23	24	17	18	29	
	2	18	28	8	21	22	23	13	17	25	
	3	21	27	8	19	21	21	10	17	21	
	4	25	26	8	18	20	21	8	16	20	
	5	27	25	7	12	19	19	8	14	18	
	6	29	23	7	11	19	19	4	14	15	
41	1	2	15	24	28	16	1	15	11	21	
	2	4	13	20	28	13	1	11	10	21	
	3	9	9	20	25	12	1	10	10	19	
	4	17	8	14	23	10	1	5	9	18	
	5	23	7	14	22	9	1	5	9	17	
	6	24	4	8	20	7	1	2	9	17	
42	1	9	2	17	26	21	25	22	27	24	
	2	10	1	17	24	21	25	22	25	18	
	3	14	1	12	22	19	22	22	23	18	
	4	18	1	10	20	18	21	21	22	15	
	5	19	1	6	15	17	19	21	20	9	
	6	30	1	5	11	16	18	21	17	9	
43	1	8	13	27	24	19	11	20	27	14	
	2	10	13	25	22	19	9	19	25	13	
	3	14	10	23	16	17	9	19	24	13	
	4	25	8	20	15	16	5	19	23	13	
	5	26	5	18	5	15	3	19	23	13	
	6	27	4	18	1	15	1	19	22	13	
44	1	3	20	21	26	22	26	23	29	20	
	2	6	19	21	25	17	26	21	24	20	
	3	17	17	21	24	16	26	17	15	20	
	4	18	15	20	24	12	26	14	14	20	
	5	19	14	19	23	6	26	13	6	20	
	6	25	14	19	23	4	26	11	4	20	
45	1	4	24	1	29	27	25	25	27	23	
	2	6	23	1	23	23	22	21	22	22	
	3	14	22	1	19	21	22	19	19	22	
	4	15	21	1	13	17	21	15	14	21	
	5	16	20	1	11	13	19	12	12	20	
	6	27	20	1	6	9	18	11	8	20	
46	1	1	25	8	11	18	26	26	24	20	
	2	7	21	8	10	13	21	25	22	19	
	3	10	18	8	10	12	19	24	22	19	
	4	16	15	7	10	8	13	22	21	18	
	5	28	9	6	10	8	13	21	19	17	
	6	29	8	6	10	6	7	20	18	17	
47	1	2	22	14	26	29	18	24	7	19	
	2	11	19	10	21	27	17	24	6	16	
	3	13	19	9	20	27	16	23	5	14	
	4	26	18	9	15	25	16	23	4	10	
	5	27	15	5	13	24	15	21	3	8	
	6	28	14	5	8	22	13	21	3	6	
48	1	7	9	22	25	30	16	14	26	24	
	2	8	7	21	23	26	15	14	21	23	
	3	15	6	21	16	23	14	14	17	22	
	4	17	6	20	15	20	14	14	12	22	
	5	22	4	20	9	20	12	14	7	21	
	6	29	4	19	7	18	12	14	6	21	
49	1	6	23	17	19	21	20	16	27	29	
	2	9	23	16	18	17	17	16	27	26	
	3	11	23	13	18	16	14	14	25	24	
	4	12	22	10	17	14	11	14	23	23	
	5	15	22	8	17	12	5	12	20	21	
	6	22	21	5	16	12	4	12	18	21	
50	1	9	16	12	21	27	26	16	29	26	
	2	10	13	10	20	23	25	13	29	21	
	3	15	12	9	19	23	23	10	29	19	
	4	17	12	8	17	21	22	10	28	15	
	5	23	11	7	16	18	21	6	27	13	
	6	24	9	7	16	15	20	4	27	11	
51	1	2	16	21	12	29	25	14	28	19	
	2	3	14	17	11	29	23	14	28	17	
	3	18	9	16	10	28	20	11	26	14	
	4	19	9	12	8	26	18	11	25	12	
	5	26	3	10	6	25	17	9	25	11	
	6	28	2	6	5	24	13	6	24	9	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	98	90	93	93	879	905	943	940

************************************************************************
