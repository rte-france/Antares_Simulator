jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 4 5 6 9 12 15 19 
2	9	5		26 16 14 10 3 
3	9	6		28 27 22 21 17 8 
4	9	5		26 21 17 11 7 
5	9	8		28 27 25 22 20 18 14 13 
6	9	7		37 28 27 25 21 20 14 
7	9	6		37 32 25 23 18 14 
8	9	6		37 32 31 25 20 18 
9	9	5		37 25 23 18 14 
10	9	7		40 37 31 29 28 24 20 
11	9	9		50 37 35 34 32 31 28 25 24 
12	9	5		41 40 37 32 16 
13	9	9		51 47 40 37 35 33 31 30 23 
14	9	9		51 50 41 40 36 35 34 31 24 
15	9	7		50 37 32 31 28 27 24 
16	9	7		51 50 36 35 34 31 24 
17	9	4		34 31 25 24 
18	9	8		50 49 48 35 34 33 30 29 
19	9	7		48 40 37 34 33 30 29 
20	9	4		51 35 30 23 
21	9	7		50 49 48 47 34 33 30 
22	9	6		51 48 37 36 35 30 
23	9	6		50 49 48 41 36 34 
24	9	5		49 48 47 33 30 
25	9	5		47 46 41 40 30 
26	9	5		48 47 45 39 35 
27	9	4		49 48 39 30 
28	9	3		47 33 30 
29	9	4		47 46 41 38 
30	9	3		45 43 38 
31	9	4		46 44 43 42 
32	9	4		51 47 45 42 
33	9	2		44 39 
34	9	2		46 38 
35	9	2		46 38 
36	9	2		45 39 
37	9	2		49 39 
38	9	2		44 42 
39	9	2		43 42 
40	9	2		45 42 
41	9	1		43 
42	9	1		52 
43	9	1		52 
44	9	1		52 
45	9	1		52 
46	9	1		52 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	4	2	3	3	4	14	21	23	19	
	2	12	1	2	3	3	14	20	22	19	
	3	19	1	2	3	3	14	17	20	16	
	4	20	1	2	3	2	14	16	19	14	
	5	21	1	2	3	2	14	15	19	11	
	6	22	1	2	3	2	14	13	18	11	
	7	25	1	2	3	1	14	11	16	7	
	8	26	1	2	3	1	14	9	15	7	
	9	29	1	2	3	1	14	7	15	3	
3	1	2	3	2	5	2	27	20	29	22	
	2	3	3	2	4	1	27	20	28	21	
	3	8	3	2	4	1	27	20	27	21	
	4	9	3	2	4	1	27	20	26	21	
	5	10	2	2	4	1	27	20	26	20	
	6	11	2	1	4	1	26	20	25	19	
	7	12	2	1	4	1	26	20	24	18	
	8	13	2	1	4	1	26	20	23	17	
	9	19	2	1	4	1	26	20	22	17	
4	1	1	3	4	3	1	29	21	16	22	
	2	2	3	3	3	1	27	20	15	19	
	3	9	3	3	3	1	25	19	14	17	
	4	12	2	3	2	1	23	18	13	17	
	5	13	2	3	2	1	23	16	13	12	
	6	23	2	3	2	1	21	14	13	12	
	7	24	2	3	1	1	20	12	12	8	
	8	27	1	3	1	1	18	11	11	6	
	9	28	1	3	1	1	18	8	11	3	
5	1	2	5	4	4	2	19	28	22	22	
	2	3	4	4	4	2	17	24	20	21	
	3	4	4	3	4	2	14	21	18	19	
	4	5	4	3	4	2	12	19	17	17	
	5	7	3	2	4	2	11	13	16	16	
	6	8	3	2	4	2	8	10	16	13	
	7	11	3	2	4	2	6	9	15	11	
	8	12	3	1	4	2	5	7	13	10	
	9	25	3	1	4	2	3	4	12	7	
6	1	1	5	5	2	5	27	19	17	17	
	2	7	4	5	2	5	26	18	16	16	
	3	8	4	5	2	5	26	18	16	15	
	4	9	4	5	2	5	26	18	15	16	
	5	10	3	5	1	5	24	17	15	16	
	6	16	3	5	1	5	24	17	15	15	
	7	17	2	5	1	5	24	17	15	16	
	8	23	2	5	1	5	23	17	14	16	
	9	25	2	5	1	5	22	17	14	16	
7	1	3	3	5	2	3	16	29	18	23	
	2	4	3	4	2	3	14	25	16	22	
	3	7	3	4	2	3	14	25	14	22	
	4	8	2	4	2	3	14	22	13	21	
	5	11	2	4	2	3	13	21	10	20	
	6	13	2	4	2	2	12	21	8	19	
	7	14	1	4	2	2	12	19	8	18	
	8	25	1	4	2	2	11	16	5	16	
	9	28	1	4	2	2	11	16	5	15	
8	1	2	5	1	1	4	14	10	26	18	
	2	5	4	1	1	4	14	9	22	17	
	3	8	4	1	1	4	14	7	19	14	
	4	9	3	1	1	4	14	7	18	14	
	5	12	2	1	1	3	14	5	13	11	
	6	13	2	1	1	3	14	5	11	10	
	7	17	2	1	1	3	14	3	8	8	
	8	21	1	1	1	3	14	2	6	7	
	9	28	1	1	1	3	14	2	5	7	
9	1	3	3	5	3	4	19	9	18	27	
	2	4	3	4	3	4	18	8	18	26	
	3	14	3	4	3	4	18	7	17	25	
	4	15	3	4	2	4	18	7	16	25	
	5	19	2	4	2	3	17	6	16	24	
	6	21	2	3	2	3	17	5	16	24	
	7	25	2	3	1	3	16	4	15	23	
	8	26	2	3	1	2	16	4	15	22	
	9	29	2	3	1	2	16	3	14	22	
10	1	4	4	3	5	1	22	13	13	12	
	2	5	4	3	5	1	21	13	11	12	
	3	12	3	3	5	1	21	13	10	11	
	4	18	3	3	5	1	20	12	10	10	
	5	22	2	3	5	1	18	12	9	10	
	6	25	2	2	5	1	17	12	9	10	
	7	26	2	2	5	1	17	11	8	9	
	8	27	1	2	5	1	15	11	6	9	
	9	30	1	2	5	1	14	11	6	8	
11	1	7	4	4	2	2	23	18	27	21	
	2	8	3	4	2	2	22	17	25	21	
	3	10	3	4	2	2	22	17	23	20	
	4	11	3	3	2	2	22	16	21	19	
	5	18	3	3	1	2	21	16	20	19	
	6	19	2	3	1	1	20	16	17	19	
	7	20	2	3	1	1	20	16	17	18	
	8	21	2	2	1	1	19	15	14	18	
	9	24	2	2	1	1	19	15	14	17	
12	1	1	4	4	4	3	20	28	16	29	
	2	2	4	4	3	3	19	26	14	24	
	3	9	4	4	3	3	19	26	14	23	
	4	18	4	4	3	2	19	24	14	20	
	5	19	4	3	3	2	19	22	13	17	
	6	20	4	3	3	2	18	21	12	17	
	7	21	4	3	3	1	18	19	11	15	
	8	27	4	3	3	1	18	18	11	13	
	9	28	4	3	3	1	18	16	10	11	
13	1	4	4	5	2	2	12	10	15	25	
	2	5	4	4	2	1	12	10	12	23	
	3	6	4	3	2	1	12	9	10	23	
	4	13	4	3	2	1	12	8	8	21	
	5	14	3	2	1	1	11	7	8	20	
	6	15	3	2	1	1	11	7	6	19	
	7	16	3	2	1	1	10	6	5	18	
	8	18	2	1	1	1	10	6	2	17	
	9	27	2	1	1	1	10	5	2	17	
14	1	4	4	3	2	4	29	18	23	21	
	2	5	4	2	2	3	25	17	20	20	
	3	8	3	2	2	3	23	17	20	20	
	4	15	3	2	2	2	21	16	17	19	
	5	16	2	2	2	2	19	14	16	19	
	6	17	2	2	1	2	18	14	15	18	
	7	20	1	2	1	2	17	13	13	17	
	8	26	1	2	1	1	15	11	13	17	
	9	27	1	2	1	1	13	10	11	17	
15	1	3	4	1	2	4	29	11	6	11	
	2	8	4	1	2	4	29	10	6	11	
	3	10	4	1	2	4	29	10	6	10	
	4	14	4	1	2	4	29	10	6	9	
	5	18	4	1	1	4	29	10	5	7	
	6	20	4	1	1	4	28	9	5	7	
	7	21	4	1	1	4	28	9	5	6	
	8	29	4	1	1	4	28	9	5	5	
	9	30	4	1	1	4	28	9	5	4	
16	1	2	4	2	3	4	29	25	26	12	
	2	4	4	1	2	4	27	24	23	12	
	3	5	4	1	2	4	25	24	23	12	
	4	6	4	1	2	3	23	24	22	12	
	5	7	4	1	2	3	21	23	19	12	
	6	11	3	1	2	3	21	23	19	11	
	7	18	3	1	2	3	18	23	17	11	
	8	26	3	1	2	2	16	22	17	11	
	9	27	3	1	2	2	14	22	16	11	
17	1	3	1	4	1	5	28	6	27	13	
	2	10	1	3	1	4	26	6	25	13	
	3	18	1	3	1	4	22	5	21	13	
	4	19	1	3	1	4	21	4	17	13	
	5	20	1	3	1	4	20	4	14	13	
	6	23	1	2	1	3	19	4	14	12	
	7	26	1	2	1	3	15	3	11	12	
	8	27	1	2	1	3	13	2	8	12	
	9	30	1	2	1	3	13	2	4	12	
18	1	5	2	5	2	4	23	23	27	26	
	2	14	2	4	2	4	21	22	26	25	
	3	15	2	4	2	4	19	20	25	22	
	4	17	2	4	2	4	17	20	24	20	
	5	18	2	3	2	4	15	19	24	18	
	6	19	2	3	2	4	14	18	22	16	
	7	20	2	3	2	4	12	16	21	15	
	8	22	2	2	2	4	11	15	21	14	
	9	23	2	2	2	4	8	15	20	12	
19	1	7	5	2	4	4	15	28	28	20	
	2	8	4	2	3	3	15	28	26	17	
	3	9	4	2	3	3	14	27	22	16	
	4	12	4	2	3	3	14	26	21	16	
	5	15	3	2	2	3	12	25	18	14	
	6	17	3	2	2	3	12	25	16	13	
	7	20	2	2	2	3	11	24	15	12	
	8	23	2	2	1	3	11	23	14	9	
	9	28	2	2	1	3	10	22	12	8	
20	1	3	5	4	4	4	24	22	23	21	
	2	6	4	3	4	4	22	22	23	21	
	3	8	3	3	4	4	20	21	21	21	
	4	9	3	3	4	3	19	19	18	21	
	5	16	3	3	4	2	17	19	14	21	
	6	26	2	2	4	2	17	18	12	20	
	7	27	2	2	4	2	14	17	10	20	
	8	28	1	2	4	1	14	17	8	20	
	9	29	1	2	4	1	12	16	6	20	
21	1	4	2	3	4	2	26	30	18	8	
	2	5	2	3	4	2	23	29	18	7	
	3	6	2	3	4	2	22	28	17	6	
	4	8	2	3	4	2	17	26	16	6	
	5	9	2	3	3	2	14	26	14	5	
	6	11	2	3	3	2	13	26	13	4	
	7	18	2	3	3	2	10	24	13	4	
	8	19	2	3	3	2	8	24	11	3	
	9	27	2	3	3	2	5	23	11	3	
22	1	2	2	3	1	2	20	24	26	20	
	2	4	1	3	1	2	20	22	26	18	
	3	5	1	3	1	2	20	20	24	17	
	4	14	1	2	1	2	20	19	23	16	
	5	18	1	2	1	2	20	18	22	13	
	6	19	1	2	1	2	20	16	21	11	
	7	20	1	2	1	2	20	16	20	8	
	8	21	1	1	1	2	20	14	19	8	
	9	30	1	1	1	2	20	13	19	4	
23	1	6	4	4	5	4	11	22	21	11	
	2	9	3	4	4	4	10	20	21	11	
	3	10	3	4	4	4	10	19	17	10	
	4	11	2	4	4	4	10	18	14	9	
	5	13	2	4	4	4	10	16	13	8	
	6	16	2	4	3	4	10	15	8	7	
	7	25	2	4	3	4	10	15	6	5	
	8	26	1	4	3	4	10	12	5	5	
	9	27	1	4	3	4	10	12	3	3	
24	1	1	3	4	3	5	30	24	17	24	
	2	5	2	4	3	4	29	23	16	24	
	3	8	2	3	3	4	28	22	16	23	
	4	11	2	3	3	4	27	21	16	22	
	5	12	1	2	3	3	27	21	16	21	
	6	20	1	2	3	3	26	20	16	21	
	7	25	1	1	3	3	26	20	16	21	
	8	28	1	1	3	3	24	18	16	20	
	9	30	1	1	3	3	24	18	16	19	
25	1	1	3	2	2	3	28	25	25	26	
	2	15	3	1	2	2	26	23	24	24	
	3	16	3	1	2	2	25	23	24	22	
	4	17	2	1	2	2	24	21	21	19	
	5	18	2	1	2	2	24	19	21	18	
	6	19	2	1	2	1	23	15	19	15	
	7	22	1	1	2	1	22	15	19	14	
	8	25	1	1	2	1	22	12	17	11	
	9	26	1	1	2	1	21	10	15	10	
26	1	2	5	2	4	4	28	12	23	25	
	2	11	4	2	3	3	28	11	20	23	
	3	12	4	2	3	3	27	11	19	22	
	4	17	4	2	3	3	26	11	18	19	
	5	19	3	2	2	3	25	10	18	16	
	6	21	3	2	2	2	25	10	16	15	
	7	26	2	2	2	2	23	10	14	13	
	8	27	2	2	1	2	23	9	13	12	
	9	30	2	2	1	2	22	9	13	8	
27	1	6	4	4	1	3	24	29	25	15	
	2	11	3	4	1	3	24	27	21	13	
	3	12	3	3	1	3	24	26	19	12	
	4	13	3	3	1	3	24	25	19	11	
	5	19	2	2	1	3	23	23	16	11	
	6	20	2	2	1	3	23	22	13	10	
	7	21	1	2	1	3	23	21	12	9	
	8	22	1	1	1	3	22	20	10	7	
	9	26	1	1	1	3	22	19	7	7	
28	1	2	2	4	3	3	4	25	23	17	
	2	3	2	4	2	3	3	24	21	14	
	3	5	2	4	2	3	3	24	19	12	
	4	8	2	4	2	3	3	24	18	12	
	5	16	2	4	2	2	3	24	14	9	
	6	17	2	3	2	2	2	23	13	7	
	7	20	2	3	2	2	2	23	11	6	
	8	25	2	3	2	2	2	23	8	2	
	9	28	2	3	2	2	2	23	5	2	
29	1	1	5	3	4	3	21	8	22	23	
	2	2	4	3	4	3	20	7	18	20	
	3	11	4	3	4	3	17	7	15	16	
	4	12	4	2	3	3	16	7	14	13	
	5	14	3	2	3	3	14	7	13	13	
	6	15	3	2	3	3	14	6	10	8	
	7	23	3	1	2	3	12	6	6	5	
	8	24	3	1	2	3	10	6	5	5	
	9	26	3	1	2	3	7	6	3	1	
30	1	4	4	5	4	5	23	13	24	29	
	2	6	3	4	3	4	23	11	23	26	
	3	12	3	4	3	4	23	11	23	25	
	4	21	3	4	3	3	23	10	23	23	
	5	25	3	3	2	3	23	10	22	21	
	6	26	2	3	2	3	23	10	22	21	
	7	27	2	3	2	3	23	9	22	20	
	8	28	2	3	2	2	23	9	22	18	
	9	29	2	3	2	2	23	8	22	16	
31	1	6	1	4	1	4	22	23	28	29	
	2	8	1	3	1	3	21	22	27	24	
	3	9	1	3	1	3	18	22	26	22	
	4	10	1	3	1	3	18	22	23	18	
	5	11	1	3	1	3	15	21	21	16	
	6	15	1	3	1	3	15	21	19	12	
	7	24	1	3	1	3	12	21	16	11	
	8	27	1	3	1	3	11	21	16	5	
	9	29	1	3	1	3	11	21	13	5	
32	1	2	5	5	3	3	14	20	19	18	
	2	3	4	5	3	2	14	20	17	18	
	3	4	4	5	3	2	13	20	16	18	
	4	7	4	5	3	2	13	20	15	17	
	5	10	4	5	3	1	13	19	13	17	
	6	13	3	5	3	1	12	19	10	17	
	7	17	3	5	3	1	11	18	9	16	
	8	18	3	5	3	1	11	18	7	16	
	9	28	3	5	3	1	11	18	3	16	
33	1	2	2	3	4	3	27	23	14	22	
	2	4	2	2	4	3	26	21	13	21	
	3	8	2	2	4	3	24	21	12	19	
	4	11	2	2	4	3	24	20	12	19	
	5	14	2	2	4	3	22	18	10	18	
	6	18	2	2	4	2	19	18	10	17	
	7	24	2	2	4	2	19	16	9	16	
	8	28	2	2	4	2	17	16	7	16	
	9	29	2	2	4	2	16	15	7	15	
34	1	1	4	4	2	3	30	16	20	21	
	2	4	4	4	1	2	25	15	19	19	
	3	15	4	4	1	2	23	14	18	18	
	4	17	4	4	1	2	22	13	17	16	
	5	20	4	3	1	2	20	10	16	12	
	6	23	4	3	1	2	19	10	16	11	
	7	24	4	3	1	2	16	8	16	8	
	8	28	4	3	1	2	15	8	14	6	
	9	29	4	3	1	2	13	7	14	4	
35	1	10	3	4	3	4	9	28	24	22	
	2	12	3	4	3	4	9	28	21	21	
	3	16	3	4	3	4	9	28	17	19	
	4	22	3	3	2	4	9	27	16	18	
	5	23	2	3	2	4	9	27	14	17	
	6	25	2	3	2	4	9	27	11	15	
	7	26	1	2	1	4	9	27	9	13	
	8	27	1	2	1	4	9	26	8	11	
	9	28	1	2	1	4	9	26	7	11	
36	1	1	2	4	2	3	6	19	20	15	
	2	4	1	4	1	3	6	16	18	15	
	3	7	1	4	1	3	6	16	15	14	
	4	8	1	4	1	3	6	14	14	13	
	5	9	1	3	1	3	5	12	13	12	
	6	10	1	3	1	3	5	12	10	10	
	7	11	1	3	1	3	5	11	9	9	
	8	21	1	3	1	3	5	9	8	8	
	9	29	1	3	1	3	5	7	7	8	
37	1	8	2	3	3	4	13	8	16	25	
	2	9	2	3	2	4	13	7	14	24	
	3	12	2	3	2	4	12	7	13	23	
	4	13	2	3	2	4	10	7	11	21	
	5	17	2	2	2	4	10	6	10	20	
	6	18	2	2	2	4	9	6	10	18	
	7	21	2	1	2	4	7	6	8	17	
	8	23	2	1	2	4	6	6	6	15	
	9	28	2	1	2	4	6	6	5	14	
38	1	7	4	4	4	3	14	26	21	20	
	2	8	4	4	4	2	13	24	18	20	
	3	16	4	3	4	2	13	22	17	20	
	4	21	4	3	4	2	13	17	14	20	
	5	22	4	3	4	1	13	14	11	20	
	6	23	4	2	4	1	12	13	11	20	
	7	24	4	2	4	1	12	7	9	20	
	8	25	4	1	4	1	12	4	5	20	
	9	30	4	1	4	1	12	4	4	20	
39	1	3	2	4	2	5	4	15	11	4	
	2	4	2	4	1	4	4	14	11	3	
	3	5	2	4	1	4	4	14	10	3	
	4	13	2	4	1	4	4	14	8	3	
	5	14	2	4	1	3	4	13	8	2	
	6	18	2	4	1	3	3	13	8	2	
	7	26	2	4	1	3	3	13	6	1	
	8	26	2	4	1	3	3	13	5	2	
	9	29	2	4	1	3	3	13	5	1	
40	1	10	5	2	3	4	25	10	8	23	
	2	15	4	2	3	4	25	9	8	21	
	3	19	4	2	3	4	23	9	7	17	
	4	20	4	2	2	4	23	8	7	16	
	5	21	3	2	2	3	21	7	6	14	
	6	26	3	1	2	3	21	7	6	11	
	7	27	3	1	2	3	20	6	5	11	
	8	28	2	1	1	3	18	6	5	9	
	9	30	2	1	1	3	18	5	5	7	
41	1	3	4	2	2	3	14	3	18	22	
	2	5	3	2	2	2	14	3	17	21	
	3	6	3	2	2	2	14	3	16	19	
	4	14	2	2	2	2	14	3	15	17	
	5	15	2	2	2	2	14	3	15	16	
	6	17	2	1	2	2	14	3	13	14	
	7	26	2	1	2	2	14	3	12	12	
	8	27	1	1	2	2	14	3	11	11	
	9	29	1	1	2	2	14	3	10	10	
42	1	8	2	3	4	4	28	9	29	11	
	2	9	2	2	4	4	26	8	28	9	
	3	10	2	2	4	4	25	8	28	9	
	4	11	2	2	4	4	23	8	27	8	
	5	18	2	2	3	3	20	7	27	8	
	6	19	2	1	3	3	19	6	26	7	
	7	24	2	1	3	3	19	6	26	6	
	8	26	2	1	3	3	16	6	25	6	
	9	28	2	1	3	3	15	5	25	6	
43	1	5	3	4	2	4	17	12	6	18	
	2	7	3	4	2	4	14	11	5	18	
	3	8	3	4	2	4	14	10	5	17	
	4	9	3	4	2	4	11	10	5	15	
	5	11	3	3	1	4	10	9	4	13	
	6	16	3	3	1	4	8	9	4	13	
	7	17	3	2	1	4	6	8	4	11	
	8	24	3	2	1	4	3	7	4	10	
	9	25	3	2	1	4	2	7	4	9	
44	1	4	1	4	5	1	27	12	22	15	
	2	5	1	4	4	1	26	11	21	14	
	3	12	1	4	4	1	24	10	19	13	
	4	16	1	4	3	1	19	9	17	13	
	5	20	1	4	2	1	18	8	17	11	
	6	23	1	4	2	1	16	8	15	10	
	7	27	1	4	1	1	13	8	15	9	
	8	28	1	4	1	1	12	6	12	9	
	9	30	1	4	1	1	9	6	11	8	
45	1	1	4	4	2	5	11	24	27	27	
	2	2	4	3	1	5	11	24	25	25	
	3	5	4	3	1	5	9	21	21	23	
	4	6	3	3	1	5	8	19	20	21	
	5	8	3	3	1	5	8	17	15	18	
	6	9	3	3	1	5	5	17	14	17	
	7	22	3	3	1	5	5	15	9	15	
	8	24	2	3	1	5	3	13	8	14	
	9	30	2	3	1	5	3	11	4	11	
46	1	2	1	3	3	4	13	25	28	30	
	2	3	1	2	3	3	12	23	28	29	
	3	4	1	2	3	3	11	23	28	29	
	4	7	1	2	3	3	11	22	28	29	
	5	9	1	2	2	2	10	18	28	29	
	6	13	1	2	2	2	10	17	28	28	
	7	16	1	2	2	1	9	15	28	28	
	8	22	1	2	2	1	9	13	28	28	
	9	25	1	2	2	1	9	13	28	27	
47	1	11	4	5	5	3	22	29	18	16	
	2	13	3	4	4	3	21	27	17	13	
	3	14	3	4	4	3	19	27	17	12	
	4	15	3	4	3	3	15	25	17	12	
	5	16	2	3	3	3	14	25	16	11	
	6	17	2	3	2	3	13	23	15	8	
	7	20	2	3	2	3	9	22	15	7	
	8	24	2	2	1	3	8	21	14	6	
	9	29	2	2	1	3	5	21	13	6	
48	1	5	1	3	3	4	20	7	20	21	
	2	9	1	3	3	4	19	7	20	21	
	3	14	1	3	3	4	19	7	20	19	
	4	19	1	3	3	3	18	7	19	19	
	5	20	1	3	3	3	18	7	19	18	
	6	21	1	2	3	3	18	7	19	16	
	7	24	1	2	3	3	18	7	19	15	
	8	28	1	2	3	2	17	7	18	15	
	9	29	1	2	3	2	17	7	18	14	
49	1	8	4	2	5	3	21	28	15	25	
	2	9	4	1	4	3	19	27	15	23	
	3	11	4	1	4	3	19	26	14	22	
	4	12	3	1	4	3	18	24	12	20	
	5	14	3	1	4	3	18	21	11	17	
	6	17	2	1	4	3	18	18	9	17	
	7	21	2	1	4	3	17	17	9	15	
	8	27	1	1	4	3	16	15	7	12	
	9	28	1	1	4	3	16	14	6	11	
50	1	2	1	3	2	4	25	2	18	23	
	2	3	1	3	1	4	24	1	18	22	
	3	7	1	3	1	4	23	1	15	22	
	4	14	1	3	1	4	22	1	14	20	
	5	24	1	2	1	3	22	1	14	20	
	6	26	1	2	1	3	20	1	12	20	
	7	28	1	2	1	3	20	1	10	18	
	8	29	1	1	1	2	18	1	8	18	
	9	30	1	1	1	2	18	1	7	17	
51	1	5	2	5	1	5	27	18	20	14	
	2	6	2	4	1	4	26	16	18	13	
	3	7	2	3	1	4	26	15	14	12	
	4	8	2	3	1	4	26	14	13	11	
	5	15	2	3	1	4	26	14	12	11	
	6	16	2	2	1	4	26	13	9	11	
	7	19	2	2	1	4	26	11	8	10	
	8	25	2	1	1	4	26	10	5	9	
	9	29	2	1	1	4	26	10	2	9	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	27	29	23	28	763	667	643	647

************************************************************************
