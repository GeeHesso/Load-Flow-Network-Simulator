function mpc = iceland

%% Iceland network
%Data stats: 189 nodes, 35 generators and 206 branches

%% Source
% Paddy McNab, Durham University (Data received on 21 Jan, 2011)
% Orignal file was in PSAT format. It was converted into Matpower format.

%% Assumptions
% Following parameters were either not avilable in the orignal data or were
% inconsistent. 

% - Line limits
% - Real power generation bounds
% - Generation costs


%% W. A. Bukhsh March 2013
% send comments and questions to w.a.bukhsh@sms.ed.ac.uk

%% Acknowlegements
% This work is supported by the grant of School of Mathematics, University
% of Edinburgh. Please cite if you are using this data for your research.
%%
mpc.version = '2';
mpc.baseMVA = 100;

%% bus data
%bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
%% Bus Data
mpc.bus = [
1	1	0.00	0.00	0.00	0.00	1	1.05	-0.08	220.00	1	1.10	0.90;
2	2	0.59	0.26	0.00	0.00	1	0.99	0.06	13.80	1	1.10	0.90;
3	2	3.52	1.53	0.00	0.00	1	0.99	0.05	13.80	1	1.10	0.90;
4	2	0.00	0.00	0.00	0.00	1	0.99	-0.04	13.80	1	1.10	0.90;
5	1	0.00	0.00	0.00	0.00	1	0.98	0.03	66.00	1	1.10	0.90;
6	1	0.00	0.00	0.00	0.00	1	0.98	0.03	66.00	1	1.10	0.90;
7	1	0.00	0.00	0.00	0.00	1	1.06	-0.06	220.00	1	1.10	0.90;
8	2	0.00	0.00	0.00	0.00	1	0.99	0.00	10.50	1	1.10	0.90;
9	2	0.00	0.00	0.00	0.00	1	0.99	0.00	10.50	1	1.10	0.90;
10	3	0.00	0.00	0.00	0.00	1	0.99	0.00	10.50	1	1.10	0.90;
11	1	0.00	0.00	0.00	0.00	1	0.99	-0.07	132.00	1	1.10	0.90;
12	1	0.00	0.00	0.00	0.00	1	1.06	-0.06	220.00	1	1.10	0.90;
13	2	0.00	0.00	0.00	0.00	1	0.99	0.05	13.80	1	1.10	0.90;
14	2	0.00	0.00	0.00	0.00	1	0.99	0.05	13.80	1	1.10	0.90;
15	1	0.00	0.00	0.00	0.00	1	1.06	-0.06	220.00	1	1.10	0.90;
16	2	0.00	0.00	0.00	0.00	1	0.99	0.06	11.00	1	1.10	0.90;
17	1	0.00	0.00	0.00	0.00	1	1.05	-0.09	220.00	1	1.10	0.90;
18	2	0.00	0.00	0.00	0.00	1	1.06	0.00	11.00	1	1.10	0.90;
19	2	0.00	0.00	0.00	0.00	1	1.06	0.00	11.00	1	1.10	0.90;
20	1	0.00	0.00	0.00	0.00	1	1.05	-0.09	220.00	1	1.10	0.90;
21	1	0.00	0.00	0.00	0.00	1	1.04	-0.09	220.00	1	1.10	0.90;
22	1	7.33	7.10	0.00	0.00	1	0.96	-0.01	66.00	1	1.10	0.90;
23	1	2.84	1.89	0.00	0.00	1	0.97	0.00	66.00	1	1.10	0.90;
24	1	5.61	4.73	0.00	0.00	1	0.96	-0.02	66.00	1	1.10	0.90;
25	1	0.00	0.00	0.00	0.00	1	1.03	-0.12	220.00	1	1.10	0.90;
26	1	0.00	0.00	0.00	0.00	1	1.03	-0.08	132.00	1	1.10	0.90;
27	2	0.00	0.00	0.00	0.00	1	1.02	-0.02	10.50	1	1.10	0.90;
28	2	0.00	0.00	0.00	0.00	1	1.02	-0.02	10.50	1	1.10	0.90;
29	2	0.00	0.00	0.00	0.00	1	1.02	-0.03	10.50	1	1.10	0.90;
30	1	0.00	0.00	0.00	0.00	1	1.01	-0.04	66.00	1	1.10	0.90;
31	1	0.00	0.00	0.00	0.00	1	1.02	-0.02	66.00	1	1.10	0.90;
32	2	0.00	0.00	0.00	0.00	1	1.03	0.04	6.60	1	1.10	0.90;
33	2	0.00	0.00	0.00	0.00	1	1.03	0.04	6.60	1	1.10	0.90;
34	1	0.00	0.00	0.00	0.00	1	1.02	-0.02	6.60	1	1.10	0.90;
35	1	0.00	0.00	0.00	0.00	1	1.01	-0.04	66.00	1	1.10	0.90;
36	2	0.00	0.00	0.00	0.00	1	1.02	0.01	6.60	1	1.10	0.90;
37	1	2.83	1.23	0.00	0.00	1	0.99	-0.08	11.00	1	1.10	0.90;
38	1	5.85	3.53	0.00	0.00	1	1.01	-0.04	66.00	1	1.10	0.90;
39	1	0.00	0.00	0.00	0.00	1	1.02	-0.13	220.00	1	1.10	0.90;
40	1	0.00	0.00	0.00	0.00	1	1.02	-0.11	132.00	1	1.10	0.90;
41	1	0.00	0.00	0.00	0.00	1	1.02	-0.13	220.00	1	1.10	0.90;
42	2	0.00	0.00	0.00	0.00	1	1.05	-0.03	11.00	1	1.10	0.90;
43	2	0.00	0.00	0.00	0.00	1	1.05	-0.03	11.00	1	1.10	0.90;
44	1	8.26	5.12	0.00	0.00	1	0.97	-0.04	66.00	1	1.10	0.90;
45	1	4.01	2.73	0.00	0.00	1	0.92	-0.07	33.00	1	1.10	0.90;
46	1	0.00	0.00	0.00	0.00	1	1.03	-0.11	220.00	1	1.10	0.90;
47	1	0.00	0.00	0.00	0.00	1	1.02	-0.11	132.00	1	1.10	0.90;
48	1	0.00	0.00	0.00	0.00	1	1.02	-0.13	220.00	1	1.10	0.90;
49	1	7.55	2.50	0.00	0.00	1	1.03	-0.12	132.00	1	1.10	0.90;
50	2	0.00	0.00	0.00	0.00	1	1.05	-0.07	11.00	1	1.10	0.90;
51	2	0.00	0.00	0.00	0.00	1	1.05	-0.07	11.00	1	1.10	0.90;
52	2	0.00	0.00	0.00	0.00	1	1.05	-0.07	11.00	1	1.10	0.90;
53	2	0.00	0.00	0.00	0.00	1	1.05	-0.07	11.00	1	1.10	0.90;
54	1	6.23	2.05	0.00	0.00	1	1.01	-0.04	66.00	1	1.10	0.90;
55	1	0.00	0.00	0.00	0.00	1	1.03	-0.12	132.00	1	1.10	0.90;
56	1	0.00	0.00	0.00	0.00	1	1.03	-0.13	132.00	1	1.10	0.90;
57	1	0.00	0.00	0.00	0.00	1	1.02	-0.14	220.00	1	1.10	0.90;
58	1	0.00	0.00	0.00	0.30	1	1.02	-0.13	132.00	1	1.10	0.90;
59	1	0.00	0.00	0.00	0.00	1	1.02	-0.13	132.00	1	1.10	0.90;
60	1	200.86	68.47	0.00	0.00	1	0.98	-0.27	21.00	1	1.10	0.90;
61	1	0.00	0.00	0.00	0.00	1	1.01	-0.15	220.00	1	1.10	0.90;
62	1	0.00	0.00	0.00	0.00	1	1.01	-0.15	220.00	1	1.10	0.90;
63	1	110.14	36.81	0.00	0.00	1	1.00	-0.23	33.00	1	1.10	0.90;
64	1	0.00	0.00	0.00	0.00	1	1.02	-0.14	220.00	1	1.10	0.90;
65	1	50.00	12.00	0.00	0.00	1	1.03	-0.14	33.00	1	1.10	0.90;
66	1	0.00	0.00	0.00	0.00	1	1.02	-0.14	220.00	1	1.10	0.90;
67	1	80.00	20.00	0.00	0.00	1	1.03	-0.14	33.00	1	1.10	0.90;
68	1	56.00	14.00	0.00	0.00	1	1.03	-0.14	33.00	1	1.10	0.90;
69	1	0.00	0.00	0.00	0.00	1	1.02	-0.13	132.00	1	1.10	0.90;
70	1	34.04	20.90	0.00	0.00	1	1.00	-0.17	33.00	1	1.10	0.90;
71	1	0.00	0.00	0.00	0.08	1	1.02	-0.14	220.00	1	1.10	0.90;
72	1	0.00	0.00	0.00	0.43	1	1.03	-0.12	132.00	1	1.10	0.90;
73	1	0.00	0.00	0.00	0.00	1	1.03	-0.12	132.00	1	1.10	0.90;
74	1	17.33	9.28	0.00	0.00	1	1.00	-0.20	11.00	1	1.10	0.90;
75	1	0.00	0.00	0.00	0.00	1	1.02	-0.13	220.00	1	1.10	0.90;
76	1	0.00	0.00	0.00	0.75	1	1.01	-0.22	220.00	1	1.10	0.90;
77	1	0.55	0.24	0.00	0.00	1	0.99	-0.21	132.00	1	1.10	0.90;
78	1	7.76	3.38	0.00	0.00	1	1.01	-0.24	66.00	1	1.10	0.90;
79	1	0.00	0.00	0.00	0.00	1	1.01	-0.24	11.00	1	1.10	0.90;
80	1	125.01	31.30	0.00	0.00	1	1.00	-0.22	220.00	1	1.10	0.90;
81	1	379.00	92.49	0.00	0.00	1	1.00	-0.23	220.00	1	1.10	0.90;
82	1	0.00	0.00	0.00	0.00	1	1.02	-0.14	132.00	1	1.10	0.90;
83	1	25.98	18.84	0.00	0.00	1	1.06	-0.15	11.00	1	1.10	0.90;
84	1	0.00	0.00	0.00	0.00	1	1.02	-0.14	132.00	1	1.10	0.90;
85	1	15.83	10.92	0.00	0.00	1	0.99	-0.17	11.00	1	1.10	0.90;
86	1	0.00	0.00	0.00	0.00	1	1.02	-0.14	132.00	1	1.10	0.90;
87	1	8.34	8.96	0.00	0.00	1	1.00	-0.14	11.00	1	1.10	0.90;
88	1	0.00	0.00	0.00	0.00	1	1.03	-0.12	132.00	1	1.10	0.90;
89	1	15.47	8.04	0.00	0.00	1	0.98	-0.16	11.00	1	1.10	0.90;
90	1	0.00	0.00	0.00	0.00	1	1.03	-0.12	132.00	1	1.10	0.90;
91	1	8.26	4.25	0.00	0.00	1	1.02	-0.14	11.00	1	1.10	0.90;
92	1	0.00	0.00	0.00	0.00	1	1.03	-0.12	132.00	1	1.10	0.90;
93	1	15.11	10.00	0.00	0.00	1	1.03	0.02	132.00	1	1.10	0.90;
94	1	0.00	0.00	0.00	0.00	1	1.03	0.06	132.00	1	1.10	0.90;
95	1	0.00	0.00	0.00	0.00	1	1.03	0.06	11.00	1	1.10	0.90;
96	1	0.00	0.00	0.00	0.00	1	1.03	0.05	132.00	1	1.10	0.90;
97	1	0.00	0.00	0.00	0.00	1	1.03	0.09	132.00	1	1.10	0.90;
98	2	0.00	0.00	0.00	0.00	1	1.03	0.17	11.00	1	1.10	0.90;
99	2	0.00	0.00	0.00	0.00	1	1.03	0.17	11.00	1	1.10	0.90;
100	1	0.00	0.00	0.00	0.00	1	1.03	0.09	11.00	1	1.10	0.90;
101	1	0.00	0.00	0.00	0.00	1	1.03	0.09	11.00	1	1.10	0.90;
102	2	3.78	1.25	0.00	0.00	1	1.05	0.17	11.00	1	1.10	0.90;
103	1	0.00	0.00	0.00	0.00	1	0.98	-0.20	132.00	1	1.10	0.90;
104	2	22.13	4.05	0.00	0.00	1	1.00	-0.29	66.00	1	1.10	0.90;
105	1	5.35	2.33	0.00	0.00	1	0.98	-0.32	19.00	1	1.10	0.90;
106	1	0.00	0.00	0.00	0.00	1	0.98	-0.32	0.41	1	1.10	0.90;
107	1	0.00	0.00	0.00	0.00	1	1.00	-0.29	11.00	1	1.10	0.90;
108	1	0.00	0.00	0.00	0.00	1	0.98	-0.32	11.00	1	1.10	0.90;
109	1	0.00	0.00	0.00	0.00	1	0.99	-0.15	132.00	1	1.10	0.90;
110	1	1.80	0.20	0.00	0.00	1	0.99	-0.16	19.00	1	1.10	0.90;
111	1	0.00	0.00	0.00	0.00	1	0.99	-0.16	0.41	1	1.10	0.90;
112	1	0.00	0.00	0.00	0.00	1	0.99	-0.16	11.00	1	1.10	0.90;
113	1	0.00	0.00	0.00	0.00	1	0.99	-0.17	132.00	1	1.10	0.90;
114	1	3.00	-1.00	0.00	0.00	1	1.07	-0.20	33.00	1	1.10	0.90;
115	1	0.00	0.00	0.00	0.00	1	0.98	-0.21	132.00	1	1.10	0.90;
116	1	20.00	2.11	0.00	0.00	1	0.99	-0.28	66.00	1	1.10	0.90;
117	2	4.00	1.05	0.00	0.00	1	1.03	-0.24	6.30	1	1.10	0.90;
118	1	0.00	0.00	0.00	0.00	1	1.01	-0.26	33.00	1	1.10	0.90;
119	1	0.00	0.00	0.00	0.00	1	0.99	-0.13	132.00	1	1.10	0.90;
120	1	2.57	1.12	0.00	0.00	1	1.00	-0.15	19.00	1	1.10	0.90;
121	1	0.00	0.00	0.00	0.00	1	1.00	-0.15	0.41	1	1.10	0.90;
122	1	0.00	0.00	0.00	0.00	1	1.00	-0.15	11.00	1	1.10	0.90;
123	1	0.00	0.00	0.00	0.00	1	1.01	-0.01	132.00	1	1.10	0.90;
124	1	5.00	0.92	0.00	0.00	1	1.03	-0.07	33.00	1	1.10	0.90;
125	1	0.00	0.00	0.00	0.00	1	1.02	0.04	132.00	1	1.10	0.90;
126	2	0.00	0.00	0.00	0.00	1	1.02	0.10	11.00	1	1.10	0.90;
127	2	0.00	0.00	0.00	0.00	1	1.02	0.10	11.00	1	1.10	0.90;
128	1	0.00	0.00	0.00	0.00	1	1.02	0.10	11.00	1	1.10	0.90;
129	1	0.00	0.00	0.00	0.00	1	1.02	0.10	11.00	1	1.10	0.90;
130	1	0.00	0.00	0.00	0.00	1	1.02	0.04	132.00	1	1.10	0.90;
131	1	9.00	1.47	0.00	0.00	1	1.04	-0.03	66.00	1	1.10	0.90;
132	1	0.00	0.00	0.00	0.00	1	1.02	0.05	132.00	1	1.10	0.90;
133	1	13.00	1.00	0.00	0.00	1	1.03	0.04	66.00	1	1.10	0.90;
134	1	4.08	1.78	0.00	0.00	1	1.00	0.00	11.00	1	1.10	0.90;
135	1	0.00	0.00	0.00	0.00	1	1.00	0.00	0.41	1	1.10	0.90;
136	1	0.00	0.00	0.00	0.00	1	1.00	0.00	11.00	1	1.10	0.90;
137	1	0.00	0.00	0.00	0.00	1	1.02	0.08	132.00	1	1.10	0.90;
138	2	0.00	0.00	0.00	0.00	1	1.00	0.19	11.00	1	1.10	0.90;
139	2	2.27	0.99	0.00	0.00	1	1.00	0.19	11.00	1	1.10	0.90;
140	1	0.00	0.00	0.00	0.00	1	1.00	0.19	0.41	1	1.10	0.90;
141	1	0.00	0.00	0.00	0.00	1	1.02	0.25	11.00	1	1.10	0.90;
142	2	0.00	0.00	0.00	0.00	1	1.02	0.25	11.00	1	1.10	0.90;
143	1	8.08	0.50	0.00	0.00	1	1.06	0.11	66.00	1	1.10	0.90;
144	2	0.00	0.00	0.00	0.00	1	1.06	0.18	11.00	1	1.10	0.90;
145	1	0.00	0.00	0.00	0.00	1	1.03	0.11	33.00	1	1.10	0.90;
146	1	0.00	0.00	0.00	0.00	1	1.06	0.11	6.60	1	1.10	0.90;
147	1	0.00	0.00	0.00	0.00	1	1.06	0.11	11.00	1	1.10	0.90;
148	1	0.00	0.00	0.00	0.00	1	1.06	0.14	0.38	1	1.10	0.90;
149	1	0.00	0.00	0.00	0.00	1	1.06	0.11	0.22	1	1.10	0.90;
150	1	0.00	0.00	0.00	0.00	1	1.06	0.11	0.38	1	1.10	0.90;
151	1	0.00	0.00	0.00	0.00	1	1.06	0.11	0.22	1	1.10	0.90;
152	1	0.00	0.00	0.00	0.00	1	1.06	0.11	6.60	1	1.10	0.90;
153	1	0.00	0.00	0.00	0.00	1	1.06	0.11	6.60	1	1.10	0.90;
154	1	0.00	0.00	0.00	0.00	1	1.06	0.11	0.22	1	1.10	0.90;
155	1	0.01	0.01	0.00	0.00	1	1.03	-0.09	132.00	1	1.10	0.90;
156	1	17.38	4.40	0.00	0.00	1	1.03	-0.15	66.00	1	1.10	0.90;
157	1	0.00	0.00	0.00	0.00	1	1.03	-0.09	132.00	1	1.10	0.90;
158	1	0.00	0.00	0.00	0.00	1	1.02	-0.09	132.00	1	1.10	0.90;
159	1	10.14	2.70	0.00	0.00	1	1.03	-0.14	66.00	1	1.10	0.90;
160	1	0.00	0.00	0.00	0.00	1	1.03	-0.14	11.00	1	1.10	0.90;
161	1	0.00	0.00	0.00	0.00	1	1.03	-0.09	132.00	1	1.10	0.90;
162	1	2.87	0.40	0.00	0.00	1	1.00	-0.12	11.00	1	1.10	0.90;
163	1	0.00	0.00	0.00	0.00	1	1.01	-0.11	33.00	1	1.10	0.90;
164	1	0.00	0.00	0.00	0.00	1	1.00	-0.12	0.41	1	1.10	0.90;
165	1	0.00	0.00	0.00	0.00	1	1.01	-0.11	11.00	1	1.10	0.90;
166	1	0.00	0.00	0.00	0.00	1	1.02	-0.10	132.00	1	1.10	0.90;
167	1	7.26	0.40	0.00	0.00	1	1.00	-0.13	11.00	1	1.10	0.90;
168	1	0.00	0.00	0.00	0.00	1	1.00	-0.13	0.41	1	1.10	0.90;
169	1	0.00	0.00	0.00	0.00	1	1.00	-0.13	11.00	1	1.10	0.90;
170	1	0.00	0.00	0.00	0.00	1	1.04	-0.11	132.00	1	1.10	0.90;
171	1	0.00	0.00	0.00	0.00	1	1.00	-0.13	19.00	1	1.10	0.90;
172	1	0.00	0.00	0.00	0.00	1	1.01	-0.09	132.00	1	1.10	0.90;
173	1	1.73	0.20	0.00	0.00	1	1.01	-0.10	19.00	1	1.10	0.90;
174	1	0.00	0.00	0.00	0.00	1	1.01	-0.10	0.41	1	1.10	0.90;
175	1	0.00	0.00	0.00	0.00	1	1.01	-0.10	11.00	1	1.10	0.90;
176	1	0.00	0.00	0.00	0.00	1	1.03	-0.07	132.00	1	1.10	0.90;
177	1	0.00	0.00	0.00	0.00	1	1.00	-0.07	220.00	1	1.10	0.90;
178	1	5.20	3.00	0.00	0.00	1	0.98	-0.10	11.00	1	1.10	0.90;
179	1	0.00	0.00	0.00	0.00	1	1.00	-0.08	69.00	1	1.10	0.90;
180	1	0.00	0.00	0.00	0.00	1	1.00	-0.08	69.00	1	1.10	0.90;
181	1	0.00	0.00	0.00	0.00	1	1.00	-0.08	69.00	1	1.10	0.90;
182	1	0.00	0.00	0.00	0.00	1	1.00	-0.08	69.00	1	1.10	0.90;
183	1	0.00	0.00	0.00	0.00	1	1.00	-0.08	69.00	1	1.10	0.90;
184	1	5.21	3.00	0.00	0.00	1	0.98	-0.10	11.00	1	1.10	0.90;
185	1	9.67	1.60	0.00	0.00	1	1.01	-0.16	66.00	1	1.10	0.90;
186	2	0.00	0.00	0.00	0.00	1	1.01	-0.12	6.60	1	1.10	0.90;
187	1	0.00	0.00	0.00	0.00	1	1.01	-0.16	11.00	1	1.10	0.90;
188	1	0.00	0.00	0.00	0.00	1	1.00	-0.08	220.00	1	1.10	0.90;
189	1	0.00	0.00	0.00	0.00	1	1.00	-0.08	220.00	1	1.10	0.90;
];
%% Generator Data
%bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
10	69.30	0.00	 38.00	-20.00	0.99	69.30	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
2	90.00	0.00	 34.00	-20.00	0.99	106.60	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
3	90.00	0.00	 34.00	-20.00	0.99	106.60	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
4	45.00	0.00	 17.00	-10.00	0.99	53.30	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
8	29.01	0.00	 38.00	-20.00	0.99	69.30	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
9	29.01	0.00	 38.00	-20.00	0.99	69.30	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
13	60.00	0.00	 42.00	-20.00	0.99	81.50	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
14	60.00	0.00	 42.00	-20.00	0.99	81.50	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
16	45.00	0.00	 17.00	-10.00	0.99	53.30	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
18	60.00	0.00	 42.00	-20.00	1.06	66.67	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
19	60.00	0.00	 42.00	-20.00	1.06	66.67	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
27	13.00	0.00	 11.60	 -5.00	1.02	19.40	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
28	13.00	0.00	 11.60	 -5.00	1.02	19.40	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
29	13.00	0.00	 12.60	 -5.00	1.02	21.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
32	11.00	0.00	  9.90	 -5.00	1.03	16.50	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
33	11.00	0.00	  9.90	 -5.00	1.03	16.50	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
36	14.60	0.00	  3.30	 -2.00	1.02	18.20	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
42	40.00	0.00	 22.00	-20.00	1.05	55.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
43	40.00	0.00	 22.00	-20.00	1.05	55.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
50	30.00	0.00	 20.00	-20.00	1.05	40.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
51	30.00	0.00	 20.00	-20.00	1.05	40.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
52	30.00	0.00	 20.00	-20.00	1.05	40.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
53	30.00	0.00	 20.00	-20.00	1.05	40.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
98	50.00	0.00	 23.00	-16.00	1.03	55.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
99	50.00	0.00	 23.00	-16.00	1.03	55.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
102	60.00	0.00	 30.00	-26.00	1.05	67.50	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
104	4.00	0.00	  3.30	 -3.30	1.00	10.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
117	6.00	0.00	  2.50	  0.00	1.03	20.20	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
126	38.00	0.00	 22.00	-12.00	1.02	60.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
127	38.00	0.00	 22.00	-12.00	1.02	60.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
138	30.00	0.00	 18.70	-16.00	1.00	37.50	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
139	30.00	0.00	 18.70	-16.00	1.00	37.50	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
142	3.00	0.00	  1.30	  0.00	1.02	3.50	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
144	20.00	0.00	 16.80	  0.00	1.06	28.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
186	6.00	0.00	  6.00	  0.00	1.01	10.00	1	2000.00	0.00	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
1	7	0.00550	0.03340	0.04711	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
1	17	0.00059	0.00818	0.02064	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
1	21	0.00138	0.00908	0.01280	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
1	46	0.00750	0.04531	0.06412	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
1	71	0.00607	0.08107	0.20636	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
5	6	0.00000	0.00010	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
5	23	0.11340	0.23710	0.00340	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
6	22	0.18920	0.40450	0.00570	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
7	12	0.00080	0.00758	0.01220	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
7	15	0.00118	0.00525	0.00734	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
11	172	0.04140	0.18600	0.03803	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
12	17	0.00186	0.01775	0.02631	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
17	20	0.00150	0.01421	0.02098	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
17	76	0.01123	0.10655	0.15787	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
17	76	0.00673	0.06290	0.22871	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
21	25	0.00702	0.04602	0.06492	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
22	24	0.09229	0.11961	0.00156	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
23	24	0.12833	0.28719	0.00422	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
24	44	0.10000	0.15000	0.00200	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
25	57	0.00500	0.03280	0.04560	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
26	40	0.02416	0.06049	0.01107	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
30	35	0.00600	0.01500	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
31	35	0.02390	0.05990	0.00070	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
35	38	0.00000	0.00010	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
35	44	0.06150	0.15910	0.00240	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
35	54	0.03990	0.10010	0.00110	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
39	41	0.00023	0.00222	0.00329	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
39	48	0.00019	0.00178	0.00263	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
39	57	0.00187	0.01776	0.02631	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
40	47	0.00055	0.00324	0.00018	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
41	46	0.00540	0.03262	0.04616	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
41	57	0.00255	0.01541	0.02180	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
41	75	0.00090	0.00852	0.01259	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
49	55	0.00068	0.00191	0.02173	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
49	58	0.00677	0.01915	0.19623	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
55	56	0.00830	0.03772	0.00758	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
56	69	0.00352	0.00996	0.10204	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
57	71	0.00208	0.01308	0.01975	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
57	71	0.00208	0.01308	0.01975	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
57	76	0.00880	0.05340	0.07600	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
58	59	0.00380	0.00840	0.02190	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
58	69	0.00460	0.01700	0.00330	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
59	82	0.00050	0.00230	0.03250	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
61	71	0.00041	0.00262	0.00460	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
62	71	0.00041	0.00262	0.00460	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
64	71	0.00041	0.00262	0.00460	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
66	71	0.00041	0.00262	0.00460	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
69	84	0.00320	0.00570	0.10540	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
71	75	0.00220	0.02120	0.03210	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
72	73	0.00110	0.00460	0.00100	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
72	92	0.00465	0.01776	0.00547	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
72	93	0.02530	0.10100	0.02190	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
76	80	0.00070	0.00400	0.00610	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
76	81	0.00040	0.00377	0.00557	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
76	81	0.00039	0.00370	0.00547	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
77	103	0.01060	0.04760	0.00985	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
82	86	0.00196	0.00418	0.04905	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
88	90	0.00402	0.00674	0.10825	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
90	92	0.00010	0.00042	0.00591	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
93	96	0.00354	0.02140	0.00392	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
94	96	0.00290	0.01159	0.00251	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
96	97	0.00583	0.03524	0.00646	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
103	119	0.04090	0.18290	0.03775	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
109	113	0.02480	0.11120	0.02270	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
109	119	0.01780	0.08000	0.01636	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
113	115	0.04290	0.19270	0.03945	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
119	123	0.03850	0.17270	0.03560	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
123	125	0.01800	0.07970	0.01590	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
125	130	0.01690	0.07500	0.01530	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
130	132	0.08390	0.21560	0.04270	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
132	137	0.04350	0.19520	0.04000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
133	143	0.35284	0.55640	0.00500	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
137	176	0.06485	0.29293	0.06014	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
141	142	0.00000	0.00010	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
155	157	0.01419	0.01638	0.10193	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
155	158	0.01663	0.07017	0.01485	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
155	161	0.02640	0.11823	0.02420	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
155	176	0.01322	0.04968	0.08516	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
159	185	0.30532	0.50960	0.00300	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
161	166	0.03990	0.17910	0.03670	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
166	170	0.00000	-0.40174	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
170	172	0.08830	0.40000	0.08380	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
177	188	0.00219	0.03499	0.08180	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
188	189	0.00000	0.00010	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
1	2	0.00481	0.14783	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
1	3	0.00481	0.14783	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
1	4	0.00292	0.11300	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
5	2	0.01616	0.10100	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
6	3	0.01616	0.10100	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
7	8	0.00373	0.12900	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
7	9	0.00373	0.12900	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
7	10	0.00373	0.12900	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
7	11	0.00200	0.10810	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
12	13	0.00444	0.15000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
12	14	0.00444	0.15000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
15	16	0.00640	0.12850	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
17	18	0.00637	0.12825	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
17	19	0.00637	0.12825	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
25	26	0.00258	0.12600	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
26	27	0.00823	0.10940	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
26	28	0.00810	0.10980	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
26	29	0.00519	0.09900	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
26	30	0.00583	0.11670	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
31	32	0.00350	0.11900	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
31	33	0.00350	0.11900	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
31	34	0.00049	0.11797	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
35	36	0.00425	0.06490	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
35	37	0.16000	1.60000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
39	40	0.00110	0.05250	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
41	42	0.00640	0.12850	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
41	43	0.00640	0.12850	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
44	45	0.05000	0.10000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
49	50	0.00522	0.07661	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
49	51	0.00522	0.07661	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
49	52	0.00522	0.07661	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
49	53	0.00522	0.07661	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
57	58	0.00110	0.04270	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
61	60	0.00200	0.05150	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
62	63	0.00256	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
64	65	0.00256	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
66	67	0.00256	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
66	68	0.00256	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
69	70	0.00270	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
71	72	0.00110	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
73	74	0.01000	0.10000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
76	77	0.00180	0.06080	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
77	78	0.00378	0.08060	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
78	79	0.01500	0.27000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
82	83	0.00150	0.00310	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
85	84	0.00300	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
87	86	0.00300	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
89	88	0.00360	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
91	90	0.00360	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
94	95	0.00615	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
94	102	0.00615	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
97	98	0.00282	0.09414	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
97	99	0.00282	0.09414	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
97	100	0.00420	0.14004	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
97	101	0.00420	0.14004	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
103	104	0.00347	0.11500	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
104	105	0.00600	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
104	107	0.00440	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
105	106	0.00450	0.04500	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
105	108	0.00440	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
109	110	0.00635	0.09870	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
110	111	0.00450	0.04500	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
110	112	0.00440	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
113	114	0.00477	0.09170	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
115	116	0.00447	0.12180	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
116	118	0.00536	0.13302	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
117	118	0.00431	0.07931	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
119	120	0.00552	0.09870	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
120	121	0.00400	0.04000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
120	122	0.00440	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
123	124	0.00535	0.12914	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
125	126	0.00297	0.10510	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
125	127	0.00297	0.10510	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
126	128	0.00060	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
127	129	0.00060	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
130	131	0.00499	0.14320	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
132	133	0.00492	0.11790	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
133	134	0.00800	0.08000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
134	135	0.00600	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
134	136	0.00011	0.00180	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
137	138	0.00420	0.14004	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
137	139	0.00420	0.14044	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
138	140	0.00440	0.04400	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
139	140	0.00440	0.04400	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
139	141	0.00629	0.06169	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
143	144	0.00694	0.13939	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
143	145	0.00420	0.08430	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
143	146	0.01002	0.10017	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
143	147	0.01200	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
144	148	0.00573	0.05730	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
146	152	0.00100	0.01000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
147	149	0.00573	0.05730	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
148	152	0.00573	0.05730	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
149	153	0.96000	9.55000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
150	153	2.66700	26.67000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
151	153	2.66700	26.67000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
152	153	0.00288	0.02865	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
152	154	2.66700	26.67000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
157	156	0.00563	0.12099	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
158	159	0.00347	0.11500	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
159	160	0.00011	0.00180	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
161	163	0.00600	0.10780	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
163	162	0.00600	0.06000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
162	164	0.00440	0.04400	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
163	165	0.00440	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
166	167	0.00454	0.10770	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
167	168	0.00440	0.04400	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
167	169	0.00440	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
167	171	0.00630	0.06930	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
172	173	0.00508	0.07896	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
173	174	0.00450	0.04500	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
173	175	0.00440	0.07200	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
177	176	0.00363	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
188	178	0.00500	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
188	179	0.00501	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
188	180	0.00501	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
188	181	0.00501	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
188	182	0.00501	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
188	183	0.00501	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
189	184	0.00500	0.12000	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
185	186	0.00300	0.05850	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
185	187	0.00300	0.05850	0.00000	9900.00	9900.00	9900.00	1.00	0.00	1	-360.00	360.00;
];
mpc.areas =[
1 1;
];
%% Generator Cost Data (Made up)
mpc.gencost = [
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
2	0	0	3	0.10	1.00	0.00;
];
