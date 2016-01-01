segment data
export Reg
global Reg type=int sclass=auto scope=GLOBAL flags=0 ref=0.000000
defconst int.2 0
address Arr_2_Glob+800 type=array 50 of int sclass=static scope=GLOBAL flags=computed ref=1.000000
address Arr_2_Glob+800+14 type=int sclass=static scope=GLOBAL flags=computed ref=1.000000
address Arr_1_Glob+16 type=int sclass=static scope=GLOBAL flags=computed ref=1.000000
address Arr_2_Glob+800 type=array 50 of int sclass=static scope=GLOBAL flags=computed ref=1.000000
address Arr_2_Glob+800+14 type=int sclass=static scope=GLOBAL flags=computed ref=1.000000
export main
segment text
function main type=int function(void) sclass=auto scope=GLOBAL flags=0 ref=0.000000 ncalls=77
blockbeg off=0
local Int_1_Loc type=int sclass=auto scope=LOCAL flags=addressed offset=0 ref=461.000000
local Int_2_Loc type=int sclass=register scope=LOCAL flags=0 offset=2 ref=411.000000
local Ch_Index type=char sclass=register scope=LOCAL flags=0 offset=4 ref=310.000000
local Int_3_Loc type=int sclass=auto scope=LOCAL flags=addressed offset=6 ref=231.000000
local Enum_Loc type=Enumeration sclass=auto scope=LOCAL flags=addressed offset=8 ref=161.000000
local Run_Index type=int sclass=register scope=LOCAL flags=0 offset=10 ref=121.000000
local Str_2_Loc type=array 31 of char sclass=auto scope=LOCAL flags=addressed offset=12 ref=71.000000
local Str_1_Loc type=array 31 of char sclass=auto scope=LOCAL flags=addressed offset=43 ref=12.000000
local Number_Of_Runs type=int sclass=register scope=LOCAL flags=0 offset=74 ref=12.000000
temporary t1 type=pointer to void sclass=register scope=LOCAL flags=temporary|generated offset=76 ref=1.000000 u.t.cse=0x7fc33c010008
temporary t2 type=pointer to void sclass=register scope=LOCAL flags=temporary|generated offset=78 ref=1.000000 u.t.cse=0x7fc33c0119c8
blockbeg off=80
blockend off=80
blockbeg off=80
blockend off=80
blockbeg off=80
local n type=int sclass=auto scope=LOCAL+1 flags=addressed offset=80 ref=2.000000
blockend off=82
blockbeg off=80
local 25 type=int sclass=register scope=LOCAL+1 flags=generated offset=80 ref=30.000000
temporary t3 type=short sclass=register scope=LOCAL+1 flags=temporary|generated offset=82 ref=1.000000 u.t.cse=0x7fc33c01ced8
blockbeg off=84
temporary t4 type=short sclass=register scope=LOCAL+2 flags=temporary|generated offset=84 ref=1.000000 u.t.cse=0x7fc33c01e470
temporary t5 type=short sclass=register scope=LOCAL+2 flags=temporary|generated offset=86 ref=1.000000 u.t.cse=0x7fc33c01e620
blockend off=88
blockbeg off=84
temporary t6 type=short sclass=register scope=LOCAL+2 flags=temporary|generated offset=84 ref=1.000000 u.t.cse=0x7fc33c0227d0
blockbeg off=86
temporary t7 type=short sclass=register scope=LOCAL+3 flags=temporary|generated offset=86 ref=1.000000 u.t.cse=0x7fc33c024218
blockend off=88
blockend off=86
temporary t8 type=short sclass=register scope=LOCAL+1 flags=temporary|generated offset=84 ref=1.000000 u.t.cse=0x7fc33c025c00
temporary t9 type=short sclass=register scope=LOCAL+1 flags=temporary|generated offset=86 ref=1.000000 u.t.cse=0x7fc33c025d20
blockend off=88
blockend off=80
 2. CNSTU2 40
1' ARGU2 #2 2 2
4. ADDRLP2 t1
6. ADDRGP2 malloc
5. CALLP2 #6 {pointer to char function}
3' ASGNP2 #4 #5 2 2
8. ADDRGP2 Next_Ptr_Glob
10. ADDRLP2 t1
9. INDIRP2 #10
7' ASGNP2 #8 #9 2 2
 2. CNSTU2 40
1' ARGU2 #2 2 2
4. ADDRLP2 t2
6. ADDRGP2 malloc
5. CALLP2 #6 {pointer to char function}
3' ASGNP2 #4 #5 2 2
8. ADDRGP2 Ptr_Glob
10. ADDRLP2 t2
9. INDIRP2 #10
7' ASGNP2 #8 #9 2 2
 3. ADDRGP2 Ptr_Glob
2. INDIRP2 #3
5. ADDRGP2 Next_Ptr_Glob
4. INDIRP2 #5
1' ASGNP2 #2 #4 2 2
 4. ADDRGP2 Ptr_Glob
3. INDIRP2 #4
5. CNSTI2 2
2. ADDP2 #3 #5
6. CNSTI2 0
1' ASGNI2 #2 #6 2 2
 4. ADDRGP2 Ptr_Glob
3. INDIRP2 #4
5. CNSTI2 4
2. ADDP2 #3 #5
6. CNSTI2 2
1' ASGNI2 #2 #6 2 2
 4. ADDRGP2 Ptr_Glob
3. INDIRP2 #4
5. CNSTI2 6
2. ADDP2 #3 #5
6. CNSTI2 40
1' ASGNI2 #2 #6 2 2
 2. ADDRGP2 7
1' ARGP2 #2 2 2
6. ADDRGP2 Ptr_Glob
5. INDIRP2 #6
7. CNSTI2 8
4. ADDP2 #5 #7
3' ARGP2 #4 2 2
9. ADDRGP2 strcpy
8' CALLI2 #9 {int function}
 2. ADDRGP2 8
1' ARGP2 #2 2 2
4. ADDRLP2 Str_1_Loc
3' ARGP2 #4 2 2
6. ADDRGP2 strcpy
5' CALLI2 #6 {int function}
 2. ADDRGP2 Arr_2_Glob+800+14
3. CNSTI2 10
1' ASGNI2 #2 #3 2 2
 2. ADDRGP2 11
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 12
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 11
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 3. ADDRGP2 Reg
2. INDIRI2 #3
4. CNSTI2 0
1' EQI2 #2 #4 13
 2. ADDRGP2 15
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 11
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 14
1' JUMPV #2
 13:
 2. ADDRGP2 16
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 11
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 14:
 2. ADDRGP2 17
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRLP2 n
1' ARGP2 #2 2 2
4. ADDRGP2 18
3' ARGP2 #4 2 2
6. ADDRGP2 scanf
5' CALLI2 #6 {int function}
 2. ADDRLP2 Number_Of_Runs
4. ADDRLP2 n
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
 2. ADDRGP2 11
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 3. ADDRLP2 Number_Of_Runs
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 19
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. ADDRLP2 Run_Index
3. CNSTI2 1
1' ASGNI2 #2 #3 2 2
 2. ADDRGP2 23
1' JUMPV #2
 20:
 2. ADDRGP2 Proc_5
1' CALLI2 #2 {int function}
 2. ADDRGP2 Proc_4
1' CALLI2 #2 {int function}
 2. ADDRLP2 Int_1_Loc
3. CNSTI2 2
1' ASGNI2 #2 #3 2 2
5. ADDRLP2 Int_2_Loc
6. CNSTI2 3
4' ASGNI2 #5 #6 2 2
8. ADDRGP2 24
7' ARGP2 #8 2 2
10. ADDRLP2 Str_2_Loc
9' ARGP2 #10 2 2
12. ADDRGP2 strcpy
11' CALLI2 #12 {int function}
 2. ADDRLP2 Enum_Loc
3. CNSTI2 1
1' ASGNI2 #2 #3 2 2
5. ADDRLP2 Str_2_Loc
4' ARGP2 #5 2 2
7. ADDRLP2 Str_1_Loc
6' ARGP2 #7 2 2
9. ADDRLP2 t3
11. ADDRGP2 Func_2
10. CALLI2 #11 {int function}
8' ASGNI2 #9 #10 2 2
14. ADDRLP2 t3
13. INDIRI2 #14
15. CNSTI2 0
12' NEI2 #13 #15 26
17. ADDRLP2 25
18. CNSTI2 1
16' ASGNI2 #17 #18 2 2
20. ADDRGP2 27
19' JUMPV #20
26:
23. ADDRLP2 25
24. CNSTI2 0
22' ASGNI2 #23 #24 2 2
27:
27. ADDRGP2 Bool_Glob
29. ADDRLP2 25
28. INDIRI2 #29
26' ASGNI2 #27 #28 2 2
 2. ADDRGP2 29
1' JUMPV #2
 28:
 2. ADDRLP2 t4
4. ADDRLP2 Int_1_Loc
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
6. ADDRLP2 Int_3_Loc
9. CNSTI2 5
11. ADDRLP2 t4
10. INDIRI2 #11
8. MULI2 #9 #10
13. ADDRLP2 Int_2_Loc
12. INDIRI2 #13
7. SUBI2 #8 #12
5' ASGNI2 #6 #7 2 2
15. ADDRLP2 Int_3_Loc
14' ARGP2 #15 2 2
18. ADDRLP2 Int_2_Loc
17. INDIRI2 #18
16' ARGI2 #17 2 2
21. ADDRLP2 t4
20. INDIRI2 #21
19' ARGI2 #20 2 2
23. ADDRGP2 Proc_7
22' CALLI2 #23 {int function}
 2. ADDRLP2 Int_1_Loc
5. ADDRLP2 Int_1_Loc
4. INDIRI2 #5
6. CNSTI2 1
3. ADDI2 #4 #6
1' ASGNI2 #2 #3 2 2
 29:
 3. ADDRLP2 Int_1_Loc
2. INDIRI2 #3
5. ADDRLP2 Int_2_Loc
4. INDIRI2 #5
1' LTI2 #2 #4 28
 3. ADDRLP2 Int_3_Loc
2. INDIRI2 #3
1' ARGI2 #2 2 2
6. ADDRLP2 Int_1_Loc
5. INDIRI2 #6
4' ARGI2 #5 2 2
8. ADDRGP2 Arr_2_Glob
7' ARGP2 #8 2 2
10. ADDRGP2 Arr_1_Glob
9' ARGP2 #10 2 2
12. ADDRGP2 Proc_8
11' CALLI2 #12 {int function}
 3. ADDRGP2 Ptr_Glob
2. INDIRP2 #3
1' ARGP2 #2 2 2
5. ADDRGP2 Proc_1
4' CALLI2 #5 {int function}
 2. ADDRLP2 Ch_Index
3. CNSTI1 65
1' ASGNI1 #2 #3 1 1
 2. ADDRGP2 34
1' JUMPV #2
 31:
 2. CNSTI2 67
1' ARGI2 #2 2 2
6. ADDRLP2 Ch_Index
5. INDIRI1 #6
4. CVII2 #5 1
3' ARGI2 #4 2 2
8. ADDRLP2 t6
10. ADDRGP2 Func_1
9. CALLI2 #10 {Enumeration function}
7' ASGNI2 #8 #9 2 2
13. ADDRLP2 Enum_Loc
12. INDIRI2 #13
15. ADDRLP2 t6
14. INDIRI2 #15
11' NEI2 #12 #14 35
 2. ADDRLP2 Enum_Loc
1' ARGP2 #2 2 2
4. CNSTI2 0
3' ARGI2 #4 2 2
6. ADDRGP2 Proc_6
5' CALLI2 #6 {int function}
 2. ADDRGP2 37
1' ARGP2 #2 2 2
4. ADDRLP2 Str_2_Loc
3' ARGP2 #4 2 2
6. ADDRGP2 strcpy
5' CALLI2 #6 {int function}
 2. ADDRLP2 Int_2_Loc
4. ADDRLP2 Run_Index
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
6. ADDRGP2 Int_Glob
8. ADDRLP2 Run_Index
7. INDIRI2 #8
5' ASGNI2 #6 #7 2 2
 35:
 32:
 2. ADDRLP2 Ch_Index
7. ADDRLP2 Ch_Index
6. INDIRI1 #7
5. CVII2 #6 1
8. CNSTI2 1
4. ADDI2 #5 #8
3. CVII1 #4 2
1' ASGNI1 #2 #3 1 1
 34:
 4. ADDRLP2 Ch_Index
3. INDIRI1 #4
2. CVII2 #3 1
7. ADDRGP2 Ch_2_Glob
6. INDIRI1 #7
5. CVII2 #6 1
1' LEI2 #2 #5 31
 2. ADDRLP2 Int_2_Loc
5. ADDRLP2 Int_2_Loc
4. INDIRI2 #5
7. ADDRLP2 Int_1_Loc
6. INDIRI2 #7
3. MULI2 #4 #6
1' ASGNI2 #2 #3 2 2
9. ADDRLP2 t9
11. ADDRLP2 Int_3_Loc
10. INDIRI2 #11
8' ASGNI2 #9 #10 2 2
13. ADDRLP2 Int_1_Loc
16. ADDRLP2 Int_2_Loc
15. INDIRI2 #16
18. ADDRLP2 t9
17. INDIRI2 #18
14. DIVI2 #15 #17
12' ASGNI2 #13 #14 2 2
20. ADDRLP2 Int_2_Loc
23. CNSTI2 7
26. ADDRLP2 Int_2_Loc
25. INDIRI2 #26
28. ADDRLP2 t9
27. INDIRI2 #28
24. SUBI2 #25 #27
22. MULI2 #23 #24
30. ADDRLP2 Int_1_Loc
29. INDIRI2 #30
21. SUBI2 #22 #29
19' ASGNI2 #20 #21 2 2
32. ADDRLP2 Int_1_Loc
31' ARGP2 #32 2 2
34. ADDRGP2 Proc_2
33' CALLI2 #34 {int function}
 21:
 2. ADDRLP2 Run_Index
5. ADDRLP2 Run_Index
4. INDIRI2 #5
6. CNSTI2 1
3. ADDI2 #4 #6
1' ASGNI2 #2 #3 2 2
 23:
 3. ADDRLP2 Run_Index
2. INDIRI2 #3
5. ADDRLP2 Number_Of_Runs
4. INDIRI2 #5
1' LEI2 #2 #4 20
 2. ADDRGP2 38
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 11
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 39
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 11
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 3. ADDRGP2 Int_Glob
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 40
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. CNSTI2 5
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 3. ADDRGP2 Bool_Glob
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 42
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. CNSTI2 1
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 4. ADDRGP2 Ch_1_Glob
3. INDIRI1 #4
2. CVII2 #3 1
1' ARGI2 #2 2 2
6. ADDRGP2 43
5' ARGP2 #6 2 2
8. ADDRGP2 printf
7' CALLI2 #8 {int function}
 2. CNSTI2 65
1' ARGI2 #2 2 2
4. ADDRGP2 44
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 4. ADDRGP2 Ch_2_Glob
3. INDIRI1 #4
2. CVII2 #3 1
1' ARGI2 #2 2 2
6. ADDRGP2 45
5' ARGP2 #6 2 2
8. ADDRGP2 printf
7' CALLI2 #8 {int function}
 2. CNSTI2 66
1' ARGI2 #2 2 2
4. ADDRGP2 44
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 3. ADDRGP2 Arr_1_Glob+16
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 46
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. CNSTI2 7
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 3. ADDRGP2 Arr_2_Glob+800+14
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 48
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. ADDRGP2 51
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 52
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 6. ADDRGP2 Ptr_Glob
5. INDIRP2 #6
4. INDIRP2 #5
3. CVPU2 #4 2
2. CVUI2 #3 2
1' ARGI2 #2 2 2
8. ADDRGP2 53
7' ARGP2 #8 2 2
10. ADDRGP2 printf
9' CALLI2 #10 {int function}
 2. ADDRGP2 54
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 5. ADDRGP2 Ptr_Glob
4. INDIRP2 #5
6. CNSTI2 2
3. ADDP2 #4 #6
2. INDIRI2 #3
1' ARGI2 #2 2 2
8. ADDRGP2 55
7' ARGP2 #8 2 2
10. ADDRGP2 printf
9' CALLI2 #10 {int function}
 2. CNSTI2 0
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 5. ADDRGP2 Ptr_Glob
4. INDIRP2 #5
6. CNSTI2 4
3. ADDP2 #4 #6
2. INDIRI2 #3
1' ARGI2 #2 2 2
8. ADDRGP2 56
7' ARGP2 #8 2 2
10. ADDRGP2 printf
9' CALLI2 #10 {int function}
 2. CNSTI2 2
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 5. ADDRGP2 Ptr_Glob
4. INDIRP2 #5
6. CNSTI2 6
3. ADDP2 #4 #6
2. INDIRI2 #3
1' ARGI2 #2 2 2
8. ADDRGP2 57
7' ARGP2 #8 2 2
10. ADDRGP2 printf
9' CALLI2 #10 {int function}
 2. CNSTI2 17
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 4. ADDRGP2 Ptr_Glob
3. INDIRP2 #4
5. CNSTI2 8
2. ADDP2 #3 #5
1' ARGP2 #2 2 2
7. ADDRGP2 58
6' ARGP2 #7 2 2
9. ADDRGP2 printf
8' CALLI2 #9 {int function}
 2. ADDRGP2 59
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 60
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 6. ADDRGP2 Next_Ptr_Glob
5. INDIRP2 #6
4. INDIRP2 #5
3. CVPU2 #4 2
2. CVUI2 #3 2
1' ARGI2 #2 2 2
8. ADDRGP2 53
7' ARGP2 #8 2 2
10. ADDRGP2 printf
9' CALLI2 #10 {int function}
 2. ADDRGP2 61
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 5. ADDRGP2 Next_Ptr_Glob
4. INDIRP2 #5
6. CNSTI2 2
3. ADDP2 #4 #6
2. INDIRI2 #3
1' ARGI2 #2 2 2
8. ADDRGP2 55
7' ARGP2 #8 2 2
10. ADDRGP2 printf
9' CALLI2 #10 {int function}
 2. CNSTI2 0
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 5. ADDRGP2 Next_Ptr_Glob
4. INDIRP2 #5
6. CNSTI2 4
3. ADDP2 #4 #6
2. INDIRI2 #3
1' ARGI2 #2 2 2
8. ADDRGP2 56
7' ARGP2 #8 2 2
10. ADDRGP2 printf
9' CALLI2 #10 {int function}
 2. CNSTI2 1
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 5. ADDRGP2 Next_Ptr_Glob
4. INDIRP2 #5
6. CNSTI2 6
3. ADDP2 #4 #6
2. INDIRI2 #3
1' ARGI2 #2 2 2
8. ADDRGP2 57
7' ARGP2 #8 2 2
10. ADDRGP2 printf
9' CALLI2 #10 {int function}
 2. CNSTI2 18
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 4. ADDRGP2 Next_Ptr_Glob
3. INDIRP2 #4
5. CNSTI2 8
2. ADDP2 #3 #5
1' ARGP2 #2 2 2
7. ADDRGP2 58
6' ARGP2 #7 2 2
9. ADDRGP2 printf
8' CALLI2 #9 {int function}
 2. ADDRGP2 59
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 3. ADDRLP2 Int_1_Loc
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 62
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. CNSTI2 5
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 3. ADDRLP2 Int_2_Loc
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 63
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. CNSTI2 13
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 3. ADDRLP2 Int_3_Loc
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 64
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. CNSTI2 7
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 3. ADDRLP2 Enum_Loc
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRGP2 65
4' ARGP2 #5 2 2
7. ADDRGP2 printf
6' CALLI2 #7 {int function}
 2. CNSTI2 1
1' ARGI2 #2 2 2
4. ADDRGP2 41
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 2. ADDRLP2 Str_1_Loc
1' ARGP2 #2 2 2
4. ADDRGP2 66
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 2. ADDRGP2 67
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRLP2 Str_2_Loc
1' ARGP2 #2 2 2
4. ADDRGP2 68
3' ARGP2 #4 2 2
6. ADDRGP2 printf
5' CALLI2 #6 {int function}
 2. ADDRGP2 69
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. ADDRGP2 11
1' ARGP2 #2 2 2
4. ADDRGP2 printf
3' CALLI2 #4 {int function}
 2. CNSTI2 0
1' RETI2 #2
 6:
maxoff=88
export Proc_1
function Proc_1 type=int function(pointer to struct record) sclass=auto scope=GLOBAL flags=0 ref=10.000000 ncalls=5
caller Ptr_Val_Par type=pointer to struct record sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
callee Ptr_Val_Par type=pointer to struct record sclass=register scope=PARAM flags=0 offset=0 ref=8.000000
blockbeg off=0
local Next_Record type=pointer to struct record sclass=register scope=LOCAL flags=0 offset=0 ref=7.500000
temporary t1 type=short sclass=register scope=LOCAL flags=temporary|generated offset=2 ref=1.000000 u.t.cse=0x7fc33c00f798
blockbeg off=4
temporary t2 type=short sclass=register scope=LOCAL+1 flags=temporary|generated offset=4 ref=1.000000 u.t.cse=0x7fc33c009f58
temporary t3 type=pointer to void sclass=register scope=LOCAL+1 flags=temporary|generated offset=6 ref=1.000000 u.t.cse=0x7fc33c00afc8
blockend off=8
temporary t4 type=pointer to void sclass=register scope=LOCAL flags=temporary|generated offset=4 ref=1.000000 u.t.cse=0x7fc33c01cd48
blockend off=6
 2. ADDRFP2 Ptr_Val_Par
4. ADDRFP2 Ptr_Val_Par
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 2. ADDRLP2 Next_Record
5. ADDRFP2 Ptr_Val_Par
4. INDIRP2 #5
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 3. ADDRGP2 71
2. INDIRU4 #3
1' ARGU4 #2 4 2
6. ADDRGP2 Ptr_Glob
5. INDIRP2 #6
4' ARGP2 #5 2 2
10. ADDRFP2 Ptr_Val_Par
9. INDIRP2 #10
8. INDIRP2 #9
7' ARGP2 #8 2 2
12. ADDRGP2 memcpy
11' CALLI2 #12 {int function}
 4. ADDRFP2 Ptr_Val_Par
3. INDIRP2 #4
5. CNSTI2 6
2. ADDP2 #3 #5
6. CNSTI2 5
1' ASGNI2 #2 #6 2 2
 2. ADDRLP2 t1
3. CNSTI2 6
1' ASGNI2 #2 #3 2 2
7. ADDRLP2 Next_Record
6. INDIRP2 #7
9. ADDRLP2 t1
8. INDIRI2 #9
5. ADDP2 #6 #8
13. ADDRFP2 Ptr_Val_Par
12. INDIRP2 #13
15. ADDRLP2 t1
14. INDIRI2 #15
11. ADDP2 #12 #14
10. INDIRI2 #11
4' ASGNI2 #5 #10 2 2
 3. ADDRLP2 Next_Record
2. INDIRP2 #3
6. ADDRFP2 Ptr_Val_Par
5. INDIRP2 #6
4. INDIRP2 #5
1' ASGNP2 #2 #4 2 2
 3. ADDRLP2 Next_Record
2. INDIRP2 #3
1' ARGP2 #2 2 2
5. ADDRGP2 Proc_3
4' CALLI2 #5 {int function}
 5. ADDRLP2 Next_Record
4. INDIRP2 #5
6. CNSTI2 2
3. ADDP2 #4 #6
2. INDIRI2 #3
7. CNSTI2 0
1' NEI2 #2 #7 72
 4. ADDRLP2 Next_Record
3. INDIRP2 #4
5. CNSTI2 6
2. ADDP2 #3 #5
6. CNSTI2 6
1' ASGNI2 #2 #6 2 2
 2. ADDRLP2 t2
3. CNSTI2 4
1' ASGNI2 #2 #3 2 2
7. ADDRLP2 Next_Record
6. INDIRP2 #7
9. ADDRLP2 t2
8. INDIRI2 #9
5. ADDP2 #6 #8
4' ARGP2 #5 2 2
14. ADDRFP2 Ptr_Val_Par
13. INDIRP2 #14
16. ADDRLP2 t2
15. INDIRI2 #16
12. ADDP2 #13 #15
11. INDIRI2 #12
10' ARGI2 #11 2 2
18. ADDRGP2 Proc_6
17' CALLI2 #18 {int function}
 3. ADDRLP2 Next_Record
2. INDIRP2 #3
6. ADDRGP2 Ptr_Glob
5. INDIRP2 #6
4. INDIRP2 #5
1' ASGNP2 #2 #4 2 2
 2. ADDRLP2 t3
5. ADDRLP2 Next_Record
4. INDIRP2 #5
6. CNSTI2 6
3. ADDP2 #4 #6
1' ASGNP2 #2 #3 2 2
9. ADDRLP2 t3
8. INDIRP2 #9
7' ARGP2 #8 2 2
11. CNSTI2 10
10' ARGI2 #11 2 2
15. ADDRLP2 t3
14. INDIRP2 #15
13. INDIRI2 #14
12' ARGI2 #13 2 2
17. ADDRGP2 Proc_7
16' CALLI2 #17 {int function}
 2. ADDRGP2 73
1' JUMPV #2
 72:
 3. ADDRGP2 71
2. INDIRU4 #3
1' ARGU4 #2 4 2
7. ADDRFP2 Ptr_Val_Par
6. INDIRP2 #7
5. INDIRP2 #6
4' ARGP2 #5 2 2
10. ADDRFP2 Ptr_Val_Par
9. INDIRP2 #10
8' ARGP2 #9 2 2
12. ADDRGP2 memcpy
11' CALLI2 #12 {int function}
 73:
 2. CNSTI2 0
1' RETI2 #2
 70:
maxoff=8
export Proc_2
function Proc_2 type=int function(pointer to int) sclass=auto scope=GLOBAL flags=0 ref=10.000000 ncalls=0
caller Int_Par_Ref type=pointer to int sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
callee Int_Par_Ref type=pointer to int sclass=register scope=PARAM flags=0 offset=0 ref=6.000000
blockbeg off=0
local Enum_Loc type=Enumeration sclass=register scope=LOCAL flags=0 offset=0 ref=15.000000
local Int_Loc type=int sclass=register scope=LOCAL flags=0 offset=2 ref=11.000000
blockbeg off=4
blockend off=4
blockend off=4
 2. ADDRFP2 Int_Par_Ref
4. ADDRFP2 Int_Par_Ref
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 2. ADDRLP2 Int_Loc
6. ADDRFP2 Int_Par_Ref
5. INDIRP2 #6
4. INDIRI2 #5
7. CNSTI2 10
3. ADDI2 #4 #7
1' ASGNI2 #2 #3 2 2
 75:
 4. ADDRGP2 Ch_1_Glob
3. INDIRI1 #4
2. CVII2 #3 1
5. CNSTI2 65
1' NEI2 #2 #5 78
 2. ADDRLP2 Int_Loc
5. ADDRLP2 Int_Loc
4. INDIRI2 #5
6. CNSTI2 1
3. SUBI2 #4 #6
1' ASGNI2 #2 #3 2 2
9. ADDRFP2 Int_Par_Ref
8. INDIRP2 #9
12. ADDRLP2 Int_Loc
11. INDIRI2 #12
14. ADDRGP2 Int_Glob
13. INDIRI2 #14
10. SUBI2 #11 #13
7' ASGNI2 #8 #10 2 2
 2. ADDRLP2 Enum_Loc
3. CNSTI2 0
1' ASGNI2 #2 #3 2 2
 78:
 76:
 3. ADDRLP2 Enum_Loc
2. INDIRI2 #3
4. CNSTI2 0
1' NEI2 #2 #4 75
 2. CNSTI2 0
1' RETI2 #2
 74:
maxoff=4
export Proc_3
function Proc_3 type=int function(pointer to pointer to struct record) sclass=auto scope=GLOBAL flags=0 ref=1.000000 ncalls=1
caller Ptr_Ref_Par type=pointer to pointer to struct record sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
callee Ptr_Ref_Par type=pointer to pointer to struct record sclass=auto scope=PARAM flags=0 offset=0 ref=0.500000
blockbeg off=0
blockend off=0
 4. ADDRGP2 Ptr_Glob
3. INDIRP2 #4
2. CVPU2 #3 2
5. CNSTU2 0
1' EQU2 #2 #5 81
 3. ADDRFP2 Ptr_Ref_Par
2. INDIRP2 #3
6. ADDRGP2 Ptr_Glob
5. INDIRP2 #6
4. INDIRP2 #5
1' ASGNP2 #2 #4 2 2
 81:
 4. ADDRGP2 Ptr_Glob
3. INDIRP2 #4
5. CNSTI2 6
2. ADDP2 #3 #5
1' ARGP2 #2 2 2
8. ADDRGP2 Int_Glob
7. INDIRI2 #8
6' ARGI2 #7 2 2
10. CNSTI2 10
9' ARGI2 #10 2 2
12. ADDRGP2 Proc_7
11' CALLI2 #12 {int function}
 2. CNSTI2 0
1' RETI2 #2
 80:
maxoff=0
export Proc_4
function Proc_4 type=int function(void) sclass=auto scope=GLOBAL flags=0 ref=10.000000 ncalls=0
blockbeg off=0
local Bool_Loc type=int sclass=auto scope=LOCAL flags=0 offset=0 ref=2.000000
local 84 type=int sclass=register scope=LOCAL flags=generated offset=2 ref=3.000000
temporary t1 type=pointer to void sclass=register scope=LOCAL flags=temporary|generated offset=4 ref=1.000000 u.t.cse=0x7fc33c00b148
blockend off=6
 4. ADDRGP2 Ch_1_Glob
3. INDIRI1 #4
2. CVII2 #3 1
5. CNSTI2 65
1' NEI2 #2 #5 85
7. ADDRLP2 84
8. CNSTI2 1
6' ASGNI2 #7 #8 2 2
10. ADDRGP2 86
9' JUMPV #10
85:
13. ADDRLP2 84
14. CNSTI2 0
12' ASGNI2 #13 #14 2 2
86:
17. ADDRLP2 Bool_Loc
19. ADDRLP2 84
18. INDIRI2 #19
16' ASGNI2 #17 #18 2 2
21. ADDRLP2 t1
22. ADDRGP2 Bool_Glob
20' ASGNP2 #21 #22 2 2
25. ADDRLP2 t1
24. INDIRP2 #25
28. ADDRLP2 Bool_Loc
27. INDIRI2 #28
31. ADDRLP2 t1
30. INDIRP2 #31
29. INDIRI2 #30
26. BORI2 #27 #29
23' ASGNI2 #24 #26 2 2
33. ADDRGP2 Ch_2_Glob
34. CNSTI1 66
32' ASGNI1 #33 #34 1 1
 2. CNSTI2 0
1' RETI2 #2
 83:
maxoff=6
export Proc_5
function Proc_5 type=int function(void) sclass=auto scope=GLOBAL flags=0 ref=10.000000 ncalls=0
blockbeg off=0
blockend off=0
 2. ADDRGP2 Ch_1_Glob
3. CNSTI1 65
1' ASGNI1 #2 #3 1 1
5. ADDRGP2 Bool_Glob
6. CNSTI2 0
4' ASGNI2 #5 #6 2 2
 2. CNSTI2 0
1' RETI2 #2
 87:
maxoff=0
export memcpy
function memcpy type=int function(pointer to char,pointer to char,int) sclass=auto scope=GLOBAL flags=0 ref=1.500000 ncalls=0
caller d type=pointer to char sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
caller s type=pointer to char sclass=auto scope=PARAM flags=0 offset=2 ref=0.000000
caller l type=int sclass=auto scope=PARAM flags=0 offset=4 ref=0.000000
callee d type=pointer to char sclass=register scope=PARAM flags=0 offset=0 ref=10.000000
callee s type=pointer to char sclass=register scope=PARAM flags=0 offset=2 ref=10.000000
callee l type=int sclass=register scope=PARAM flags=0 offset=4 ref=10.000000
blockbeg off=0
temporary t1 type=pointer to void sclass=register scope=LOCAL flags=temporary|generated offset=0 ref=1.000000
temporary t3 type=pointer to void sclass=register scope=LOCAL flags=temporary|generated offset=2 ref=1.000000
temporary t2 type=short sclass=register scope=LOCAL flags=temporary|generated offset=4 ref=1.000000 u.t.cse=0x7fc33c00e320
temporary t4 type=short sclass=register scope=LOCAL flags=temporary|generated offset=6 ref=1.000000
blockend off=8
 2. ADDRFP2 d
4. ADDRFP2 d
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 2. ADDRFP2 s
4. ADDRFP2 s
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 2. ADDRFP2 l
4. ADDRFP2 l
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
 2. ADDRGP2 90
1' JUMPV #2
 89:
 2. ADDRLP2 t1
4. ADDRFP2 d
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
6. ADDRLP2 t2
7. CNSTI2 1
5' ASGNI2 #6 #7 2 2
9. ADDRFP2 d
12. ADDRLP2 t1
11. INDIRP2 #12
14. ADDRLP2 t2
13. INDIRI2 #14
10. ADDP2 #11 #13
8' ASGNP2 #9 #10 2 2
16. ADDRLP2 t3
18. ADDRFP2 s
17. INDIRP2 #18
15' ASGNP2 #16 #17 2 2
20. ADDRFP2 s
23. ADDRLP2 t3
22. INDIRP2 #23
25. ADDRLP2 t2
24. INDIRI2 #25
21. ADDP2 #22 #24
19' ASGNP2 #20 #21 2 2
28. ADDRLP2 t1
27. INDIRP2 #28
31. ADDRLP2 t3
30. INDIRP2 #31
29. INDIRI1 #30
26' ASGNI1 #27 #29 1 1
 90:
 2. ADDRLP2 t4
4. ADDRFP2 l
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
6. ADDRFP2 l
9. ADDRLP2 t4
8. INDIRI2 #9
10. CNSTI2 1
7. SUBI2 #8 #10
5' ASGNI2 #6 #7 2 2
13. ADDRLP2 t4
12. INDIRI2 #13
14. CNSTI2 0
11' NEI2 #12 #14 89
 2. CNSTI2 0
1' RETI2 #2
 88:
maxoff=8
export Proc_6
function Proc_6 type=int function(int,pointer to Enumeration) sclass=auto scope=GLOBAL flags=0 ref=50.500000 ncalls=1
caller Enum_Val_Par type=int sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
caller Enum_Ref_Par type=pointer to Enumeration sclass=auto scope=PARAM flags=0 offset=2 ref=0.000000
callee Enum_Val_Par type=Enumeration sclass=register scope=PARAM flags=0 offset=0 ref=3.000000
callee Enum_Ref_Par type=pointer to Enumeration sclass=auto scope=PARAM flags=0 offset=2 ref=1.900000
blockbeg off=0
temporary t1 type=short sclass=register scope=LOCAL flags=temporary|generated offset=0 ref=1.000000 u.t.cse=0x7fc33c009470
local 97 type=int sclass=register scope=LOCAL flags=generated offset=2 ref=1.300000
temporary t2 type=short sclass=register scope=LOCAL flags=temporary|generated offset=4 ref=1.000000 u.t.cse=0x7fc33c01d200
blockbeg off=6
blockend off=6
blockend off=6
 2. ADDRFP2 Enum_Val_Par
4. ADDRFP2 Enum_Val_Par
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
 3. ADDRFP2 Enum_Ref_Par
2. INDIRP2 #3
5. ADDRFP2 Enum_Val_Par
4. INDIRI2 #5
1' ASGNI2 #2 #4 2 2
 3. ADDRFP2 Enum_Val_Par
2. INDIRI2 #3
1' ARGI2 #2 2 2
5. ADDRLP2 t1
7. ADDRGP2 Func_3
6. CALLI2 #7 {int function}
4' ASGNI2 #5 #6 2 2
10. ADDRLP2 t1
9. INDIRI2 #10
11. CNSTI2 0
8' NEI2 #9 #11 93
 3. ADDRFP2 Enum_Ref_Par
2. INDIRP2 #3
4. CNSTI2 3
1' ASGNI2 #2 #4 2 2
 93:
 2. ADDRLP2 97
4. ADDRFP2 Enum_Val_Par
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
 3. ADDRLP2 97
2. INDIRI2 #3
4. CNSTI2 0
1' LTI2 #2 #4 95
7. ADDRLP2 97
6. INDIRI2 #7
8. CNSTI2 4
5' GTI2 #6 #8 95
14. ADDRLP2 97
13. INDIRI2 #14
15. CNSTI2 1
12. LSHI2 #13 #15
16. ADDRGP2 105
11. ADDP2 #12 #16
10. INDIRP2 #11
9' JUMPV #10
segment lit
global 105 type=array 5 of pointer to void sclass=static scope=GLOBAL flags=generated ref=0.100000
defaddress 98
defaddress 99
defaddress 102
defaddress 96
defaddress 104
segment text
 98:
 3. ADDRFP2 Enum_Ref_Par
2. INDIRP2 #3
4. CNSTI2 0
1' ASGNI2 #2 #4 2 2
 2. ADDRGP2 96
1' JUMPV #2
 99:
 3. ADDRGP2 Int_Glob
2. INDIRI2 #3
4. CNSTI2 100
1' LEI2 #2 #4 100
 3. ADDRFP2 Enum_Ref_Par
2. INDIRP2 #3
4. CNSTI2 0
1' ASGNI2 #2 #4 2 2
 2. ADDRGP2 96
1' JUMPV #2
 100:
 3. ADDRFP2 Enum_Ref_Par
2. INDIRP2 #3
4. CNSTI2 3
1' ASGNI2 #2 #4 2 2
 2. ADDRGP2 96
1' JUMPV #2
 102:
 3. ADDRFP2 Enum_Ref_Par
2. INDIRP2 #3
4. CNSTI2 1
1' ASGNI2 #2 #4 2 2
 2. ADDRGP2 96
1' JUMPV #2
 104:
 3. ADDRFP2 Enum_Ref_Par
2. INDIRP2 #3
4. CNSTI2 2
1' ASGNI2 #2 #4 2 2
 95:
 96:
 2. CNSTI2 0
1' RETI2 #2
 92:
maxoff=6
export Proc_7
function Proc_7 type=int function(int,int,pointer to int) sclass=auto scope=GLOBAL flags=0 ref=101.500000 ncalls=0
caller Int_1_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
caller Int_2_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=2 ref=0.000000
caller Int_Par_Ref type=pointer to int sclass=auto scope=PARAM flags=0 offset=4 ref=0.000000
callee Int_1_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=0 ref=1.000000
callee Int_2_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=2 ref=1.000000
callee Int_Par_Ref type=pointer to int sclass=auto scope=PARAM flags=0 offset=4 ref=1.000000
blockbeg off=0
local Int_Loc type=int sclass=auto scope=LOCAL flags=0 offset=0 ref=2.000000
blockend off=2
 2. ADDRLP2 Int_Loc
5. ADDRFP2 Int_1_Par_Val
4. INDIRI2 #5
6. CNSTI2 2
3. ADDI2 #4 #6
1' ASGNI2 #2 #3 2 2
9. ADDRFP2 Int_Par_Ref
8. INDIRP2 #9
12. ADDRFP2 Int_2_Par_Val
11. INDIRI2 #12
14. ADDRLP2 Int_Loc
13. INDIRI2 #14
10. ADDI2 #11 #13
7' ASGNI2 #8 #10 2 2
 2. CNSTI2 0
1' RETI2 #2
 106:
maxoff=2
export Proc_8
function Proc_8 type=int function(pointer to int,pointer to array 50 of int,int,int) sclass=auto scope=GLOBAL flags=0 ref=10.000000 ncalls=0
caller Arr_1_Par_Ref type=pointer to int sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
caller Arr_2_Par_Ref type=pointer to array 50 of int sclass=auto scope=PARAM flags=0 offset=2 ref=0.000000
caller Int_1_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=4 ref=0.000000
caller Int_2_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=6 ref=0.000000
callee Arr_1_Par_Ref type=pointer to int sclass=register scope=PARAM flags=0 offset=0 ref=5.000000
callee Arr_2_Par_Ref type=pointer to array 50 of int sclass=register scope=PARAM flags=0 offset=2 ref=12.000000
callee Int_1_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=4 ref=1.000000
callee Int_2_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=6 ref=1.000000
blockbeg off=0
local Int_Loc type=int sclass=register scope=LOCAL flags=0 offset=0 ref=42.000000
local Int_Index type=int sclass=register scope=LOCAL flags=0 offset=2 ref=31.000000
temporary t1 type=short sclass=register scope=LOCAL flags=temporary|generated offset=4 ref=1.000000 u.t.cse=0x7fc33c00a008
temporary t2 type=pointer to void sclass=register scope=LOCAL flags=temporary|generated offset=6 ref=1.000000 u.t.cse=0x7fc33c00a248
temporary t3 type=short sclass=register scope=LOCAL flags=temporary|generated offset=8 ref=1.000000 u.t.cse=0x7fc33c00ae38
temporary t4 type=short sclass=register scope=LOCAL flags=temporary|generated offset=10 ref=1.000000 u.t.cse=0x7fc33c01d3d8
temporary t5 type=short sclass=register scope=LOCAL flags=temporary|generated offset=12 ref=1.000000 u.t.cse=0x7fc33c0196a8
temporary t6 type=short sclass=register scope=LOCAL flags=temporary|generated offset=14 ref=1.000000 u.t.cse=0x7fc33c019738
temporary t7 type=pointer to void sclass=register scope=LOCAL flags=temporary|generated offset=16 ref=1.000000 u.t.cse=0x7fc33c019c48
temporary t8 type=short sclass=register scope=LOCAL flags=temporary|generated offset=18 ref=1.000000 u.t.cse=0x7fc33c01aba8
temporary t9 type=short sclass=register scope=LOCAL flags=temporary|generated offset=20 ref=1.000000 u.t.cse=0x7fc33c01acc8
blockend off=22
 2. ADDRFP2 Arr_1_Par_Ref
4. ADDRFP2 Arr_1_Par_Ref
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 2. ADDRFP2 Arr_2_Par_Ref
4. ADDRFP2 Arr_2_Par_Ref
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 2. ADDRLP2 Int_Loc
5. ADDRFP2 Int_1_Par_Val
4. INDIRI2 #5
6. CNSTI2 5
3. ADDI2 #4 #6
1' ASGNI2 #2 #3 2 2
11. ADDRLP2 Int_Loc
10. INDIRI2 #11
12. CNSTI2 1
9. LSHI2 #10 #12
14. ADDRFP2 Arr_1_Par_Ref
13. INDIRP2 #14
8. ADDP2 #9 #13
16. ADDRFP2 Int_2_Par_Val
15. INDIRI2 #16
7' ASGNI2 #8 #15 2 2
 2. ADDRLP2 t1
5. ADDRLP2 Int_Loc
4. INDIRI2 #5
6. CNSTI2 1
3. LSHI2 #4 #6
1' ASGNI2 #2 #3 2 2
11. ADDRLP2 t1
10. INDIRI2 #11
12. CNSTI2 2
9. ADDI2 #10 #12
14. ADDRFP2 Arr_1_Par_Ref
13. INDIRP2 #14
8. ADDP2 #9 #13
18. ADDRLP2 t1
17. INDIRI2 #18
20. ADDRFP2 Arr_1_Par_Ref
19. INDIRP2 #20
16. ADDP2 #17 #19
15. INDIRI2 #16
7' ASGNI2 #8 #15 2 2
 6. ADDRLP2 Int_Loc
5. INDIRI2 #6
7. CNSTI2 1
4. LSHI2 #5 #7
8. CNSTI2 60
3. ADDI2 #4 #8
10. ADDRFP2 Arr_1_Par_Ref
9. INDIRP2 #10
2. ADDP2 #3 #9
12. ADDRLP2 Int_Loc
11. INDIRI2 #12
1' ASGNI2 #2 #11 2 2
 2. ADDRLP2 Int_Index
4. ADDRLP2 Int_Loc
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
 2. ADDRGP2 111
1' JUMPV #2
 108:
 5. ADDRLP2 Int_Index
4. INDIRI2 #5
6. CNSTI2 1
3. LSHI2 #4 #6
9. CNSTI2 100
11. ADDRLP2 Int_Loc
10. INDIRI2 #11
8. MULI2 #9 #10
13. ADDRFP2 Arr_2_Par_Ref
12. INDIRP2 #13
7. ADDP2 #8 #12
2. ADDP2 #3 #7
15. ADDRLP2 Int_Loc
14. INDIRI2 #15
1' ASGNI2 #2 #14 2 2
 109:
 2. ADDRLP2 Int_Index
5. ADDRLP2 Int_Index
4. INDIRI2 #5
6. CNSTI2 1
3. ADDI2 #4 #6
1' ASGNI2 #2 #3 2 2
 111:
 3. ADDRLP2 Int_Index
2. INDIRI2 #3
6. ADDRLP2 Int_Loc
5. INDIRI2 #6
7. CNSTI2 1
4. ADDI2 #5 #7
1' LEI2 #2 #4 108
 2. ADDRLP2 t6
3. CNSTI2 1
1' ASGNI2 #2 #3 2 2
5. ADDRLP2 t7
10. ADDRLP2 Int_Loc
9. INDIRI2 #10
12. ADDRLP2 t6
11. INDIRI2 #12
8. LSHI2 #9 #11
13. CNSTI2 2
7. SUBI2 #8 #13
16. CNSTI2 100
18. ADDRLP2 Int_Loc
17. INDIRI2 #18
15. MULI2 #16 #17
20. ADDRFP2 Arr_2_Par_Ref
19. INDIRP2 #20
14. ADDP2 #15 #19
6. ADDP2 #7 #14
4' ASGNP2 #5 #6 2 2
23. ADDRLP2 t7
22. INDIRP2 #23
27. ADDRLP2 t7
26. INDIRP2 #27
25. INDIRI2 #26
29. ADDRLP2 t6
28. INDIRI2 #29
24. ADDI2 #25 #28
21' ASGNI2 #22 #24 2 2
 2. ADDRLP2 t9
5. ADDRLP2 Int_Loc
4. INDIRI2 #5
6. CNSTI2 1
3. LSHI2 #4 #6
1' ASGNI2 #2 #3 2 2
10. ADDRLP2 t9
9. INDIRI2 #10
14. CNSTI2 100
16. ADDRLP2 Int_Loc
15. INDIRI2 #16
13. MULI2 #14 #15
17. CNSTI2 2000
12. ADDI2 #13 #17
19. ADDRFP2 Arr_2_Par_Ref
18. INDIRP2 #19
11. ADDP2 #12 #18
8. ADDP2 #9 #11
23. ADDRLP2 t9
22. INDIRI2 #23
25. ADDRFP2 Arr_1_Par_Ref
24. INDIRP2 #25
21. ADDP2 #22 #24
20. INDIRI2 #21
7' ASGNI2 #8 #20 2 2
 2. ADDRGP2 Int_Glob
3. CNSTI2 5
1' ASGNI2 #2 #3 2 2
 2. CNSTI2 0
1' RETI2 #2
 107:
maxoff=22
export Func_1
function Func_1 type=Enumeration function(int,int) sclass=auto scope=GLOBAL flags=0 ref=100.000000 ncalls=0
caller Ch_1_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
caller Ch_2_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=2 ref=0.000000
callee Ch_1_Par_Val type=char sclass=auto scope=PARAM flags=0 offset=0 ref=1.000000
callee Ch_2_Par_Val type=char sclass=auto scope=PARAM flags=0 offset=2 ref=1.000000
blockbeg off=0
local Ch_1_Loc type=char sclass=auto scope=LOCAL flags=0 offset=0 ref=2.500000
local Ch_2_Loc type=char sclass=auto scope=LOCAL flags=0 offset=1 ref=2.000000
blockbeg off=2
blockend off=2
blockend off=2
 2. ADDRFP2 Ch_1_Par_Val
5. ADDRFP2 Ch_1_Par_Val
4. INDIRI2 #5
3. CVII1 #4 2
1' ASGNI1 #2 #3 1 1
 2. ADDRFP2 Ch_2_Par_Val
5. ADDRFP2 Ch_2_Par_Val
4. INDIRI2 #5
3. CVII1 #4 2
1' ASGNI1 #2 #3 1 1
 2. ADDRLP2 Ch_1_Loc
4. ADDRFP2 Ch_1_Par_Val
3. INDIRI1 #4
1' ASGNI1 #2 #3 1 1
6. ADDRLP2 Ch_2_Loc
8. ADDRLP2 Ch_1_Loc
7. INDIRI1 #8
5' ASGNI1 #6 #7 1 1
12. ADDRLP2 Ch_2_Loc
11. INDIRI1 #12
10. CVII2 #11 1
15. ADDRFP2 Ch_2_Par_Val
14. INDIRI1 #15
13. CVII2 #14 1
9' EQI2 #10 #13 113
 2. CNSTI2 0
1' RETI2 #2
 2. ADDRGP2 112
1' JUMPV #2
 113:
 2. ADDRGP2 Ch_1_Glob
4. ADDRLP2 Ch_1_Loc
3. INDIRI1 #4
1' ASGNI1 #2 #3 1 1
6. CNSTI2 1
5' RETI2 #6
 112:
maxoff=2
export Func_2
function Func_2 type=int function(pointer to char,pointer to char) sclass=auto scope=GLOBAL flags=0 ref=10.000000 ncalls=2
caller Str_1_Par_Ref type=pointer to char sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
caller Str_2_Par_Ref type=pointer to char sclass=auto scope=PARAM flags=0 offset=2 ref=0.000000
callee Str_1_Par_Ref type=pointer to char sclass=register scope=PARAM flags=0 offset=0 ref=10.500000
callee Str_2_Par_Ref type=pointer to char sclass=register scope=PARAM flags=0 offset=2 ref=10.500000
blockbeg off=0
local Int_Loc type=int sclass=register scope=LOCAL flags=0 offset=0 ref=37.000000
local Ch_Loc type=char sclass=register scope=LOCAL flags=0 offset=2 ref=8.000000
temporary t1 type=short sclass=register scope=LOCAL flags=temporary|generated offset=4 ref=1.000000 u.t.cse=0x7fc33c009b60
temporary t2 type=short sclass=register scope=LOCAL flags=temporary|generated offset=6 ref=1.000000 u.t.cse=0x7fc33c00a460
blockbeg off=8
blockend off=8
temporary t3 type=short sclass=register scope=LOCAL flags=temporary|generated offset=8 ref=1.000000 u.t.cse=0x7fc33c01cae8
blockbeg off=10
temporary t4 type=short sclass=register scope=LOCAL+1 flags=temporary|generated offset=10 ref=1.000000 u.t.cse=0x7fc33c022020
blockbeg off=12
blockend off=12
blockend off=12
blockend off=10
 2. ADDRFP2 Str_1_Par_Ref
4. ADDRFP2 Str_1_Par_Ref
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 2. ADDRFP2 Str_2_Par_Ref
4. ADDRFP2 Str_2_Par_Ref
3. INDIRP2 #4
1' ASGNP2 #2 #3 2 2
 2. ADDRLP2 Int_Loc
3. CNSTI2 2
1' ASGNI2 #2 #3 2 2
 2. ADDRGP2 117
1' JUMPV #2
 116:
 7. ADDRLP2 Int_Loc
6. INDIRI2 #7
8. CNSTI2 1
5. ADDI2 #6 #8
10. ADDRFP2 Str_2_Par_Ref
9. INDIRP2 #10
4. ADDP2 #5 #9
3. INDIRI1 #4
2. CVII2 #3 1
1' ARGI2 #2 2 2
16. ADDRLP2 Int_Loc
15. INDIRI2 #16
18. ADDRFP2 Str_1_Par_Ref
17. INDIRP2 #18
14. ADDP2 #15 #17
13. INDIRI1 #14
12. CVII2 #13 1
11' ARGI2 #12 2 2
20. ADDRLP2 t2
22. ADDRGP2 Func_1
21. CALLI2 #22 {Enumeration function(int,int)}
19' ASGNI2 #20 #21 2 2
25. ADDRLP2 t2
24. INDIRI2 #25
26. CNSTI2 0
23' NEI2 #24 #26 119
 2. ADDRLP2 Ch_Loc
3. CNSTI1 65
1' ASGNI1 #2 #3 1 1
5. ADDRLP2 Int_Loc
8. ADDRLP2 Int_Loc
7. INDIRI2 #8
9. CNSTI2 1
6. ADDI2 #7 #9
4' ASGNI2 #5 #6 2 2
 119:
 117:
 3. ADDRLP2 Int_Loc
2. INDIRI2 #3
4. CNSTI2 2
1' LEI2 #2 #4 116
 2. ADDRLP2 t3
5. ADDRLP2 Ch_Loc
4. INDIRI1 #5
3. CVII2 #4 1
1' ASGNI2 #2 #3 2 2
8. ADDRLP2 t3
7. INDIRI2 #8
9. CNSTI2 87
6' LTI2 #7 #9 121
12. ADDRLP2 t3
11. INDIRI2 #12
13. CNSTI2 90
10' GEI2 #11 #13 121
 2. ADDRLP2 Int_Loc
3. CNSTI2 7
1' ASGNI2 #2 #3 2 2
 121:
 4. ADDRLP2 Ch_Loc
3. INDIRI1 #4
2. CVII2 #3 1
5. CNSTI2 82
1' NEI2 #2 #5 123
 2. CNSTI2 1
1' RETI2 #2
 2. ADDRGP2 115
1' JUMPV #2
 123:
 3. ADDRFP2 Str_2_Par_Ref
2. INDIRP2 #3
1' ARGP2 #2 2 2
6. ADDRFP2 Str_1_Par_Ref
5. INDIRP2 #6
4' ARGP2 #5 2 2
8. ADDRLP2 t4
10. ADDRGP2 strcmp
9. CALLI2 #10 {int function}
7' ASGNI2 #8 #9 2 2
13. ADDRLP2 t4
12. INDIRI2 #13
14. CNSTI2 0
11' LEI2 #12 #14 125
 2. ADDRLP2 Int_Loc
5. ADDRLP2 Int_Loc
4. INDIRI2 #5
6. CNSTI2 7
3. ADDI2 #4 #6
1' ASGNI2 #2 #3 2 2
8. ADDRGP2 Int_Glob
10. ADDRLP2 Int_Loc
9. INDIRI2 #10
7' ASGNI2 #8 #9 2 2
12. CNSTI2 1
11' RETI2 #12
 2. ADDRGP2 115
1' JUMPV #2
 125:
 2. CNSTI2 0
1' RETI2 #2
 115:
maxoff=12
export Func_3
function Func_3 type=int function(int) sclass=auto scope=GLOBAL flags=0 ref=1.000000 ncalls=0
caller Enum_Par_Val type=int sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
callee Enum_Par_Val type=Enumeration sclass=auto scope=PARAM flags=0 offset=0 ref=1.000000
blockbeg off=0
local Enum_Loc type=Enumeration sclass=auto scope=LOCAL flags=0 offset=0 ref=2.000000
blockend off=2
 2. ADDRFP2 Enum_Par_Val
4. ADDRFP2 Enum_Par_Val
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
 2. ADDRLP2 Enum_Loc
4. ADDRFP2 Enum_Par_Val
3. INDIRI2 #4
1' ASGNI2 #2 #3 2 2
7. ADDRLP2 Enum_Loc
6. INDIRI2 #7
8. CNSTI2 2
5' NEI2 #6 #8 128
 2. CNSTI2 1
1' RETI2 #2
 2. ADDRGP2 127
1' JUMPV #2
 128:
 2. CNSTI2 0
1' RETI2 #2
 127:
maxoff=2
import strcmp
import scanf
import printf
import strcpy
import malloc
segment bss
export Arr_2_Glob
global Arr_2_Glob type=array 50,50 of int sclass=auto scope=GLOBAL flags=0 ref=12.000000
space 5000
export Arr_1_Glob
global Arr_1_Glob type=array 50 of int sclass=auto scope=GLOBAL flags=0 ref=11.000000
space 100
export Ch_2_Glob
global Ch_2_Glob type=char sclass=auto scope=GLOBAL flags=0 ref=102.000000
space 1
export Ch_1_Glob
global Ch_1_Glob type=char sclass=auto scope=GLOBAL flags=0 ref=13.500000
space 1
export Bool_Glob
global Bool_Glob type=int sclass=auto scope=GLOBAL flags=0 ref=14.000000
space 2
export Int_Glob
global Int_Glob type=int sclass=auto scope=GLOBAL flags=0 ref=58.349998
space 2
export Next_Ptr_Glob
global Next_Ptr_Glob type=pointer to struct record sclass=auto scope=GLOBAL flags=0 ref=7.000000
space 2
export Ptr_Glob
global Ptr_Glob type=pointer to struct record sclass=auto scope=GLOBAL flags=0 ref=25.000000
space 2
segment lit
global 71 type=unsigned long sclass=static scope=GLOBAL flags=generated ref=1.500000
defconst unsigned.4 40
global 69 type=array 53 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "        should be:   DHRYSTONE PROGRAM, 2'ND STRING\012\000"
global 68 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Str_2_Loc:           %s\012\000"
global 67 type=array 53 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "        should be:   DHRYSTONE PROGRAM, 1'ST STRING\012\000"
global 66 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Str_1_Loc:           %s\012\000"
global 65 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Enum_Loc:            %d\012\000"
global 64 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Int_3_Loc:           %d\012\000"
global 63 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Int_2_Loc:           %d\012\000"
global 62 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Int_1_Loc:           %d\012\000"
global 61 type=array 64 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "        should be:   (implementation-dependent), same as above\012\000"
global 60 type=array 17 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Next_Ptr_Glob->\012\000"
global 59 type=array 53 of char sclass=static scope=GLOBAL flags=generated ref=2.000000
defstring "        should be:   DHRYSTONE PROGRAM, SOME STRING\012\000"
global 58 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=2.000000
defstring "  Str_Comp:          %s\012\000"
global 57 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=2.000000
defstring "  Int_Comp:          %d\012\000"
global 56 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=2.000000
defstring "  Enum_Comp:         %d\012\000"
global 55 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=2.000000
defstring "  Discr:             %d\012\000"
global 54 type=array 49 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "        should be:   (implementation-dependent)\012\000"
global 53 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=2.000000
defstring "  Ptr_Comp:          %d\012\000"
global 52 type=array 12 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Ptr_Glob->\012\000"
global 51 type=array 42 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "        should be:   Number_Of_Runs + 10\012\000"
global 48 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Arr_2_Glob[8][7]:    %d\012\000"
global 46 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Arr_1_Glob[8]:       %d\012\000"
global 45 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Ch_2_Glob:           %c\012\000"
global 44 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=2.000000
defstring "        should be:   %c\012\000"
global 43 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Ch_1_Glob:           %c\012\000"
global 42 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Bool_Glob:           %d\012\000"
global 41 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=13.000000
defstring "        should be:   %d\012\000"
global 40 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Int_Glob:            %d\012\000"
global 39 type=array 54 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Final values of the variables used in the benchmark:\012\000"
global 38 type=array 16 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Execution ends\012\000"
global 37 type=array 31 of char sclass=static scope=GLOBAL flags=generated ref=50.000000
defstring "DHRYSTONE PROGRAM, 3'RD STRING\000"
global 24 type=array 31 of char sclass=static scope=GLOBAL flags=generated ref=10.000000
defstring "DHRYSTONE PROGRAM, 2'ND STRING\000"
global 19 type=array 45 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Execution starts, %d runs through Dhrystone\012\000"
global 18 type=array 3 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "%d\000"
global 17 type=array 55 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Please give the number of runs through the benchmark: \000"
global 16 type=array 47 of char sclass=static scope=GLOBAL flags=generated ref=0.500000
defstring "Program compiled without 'register' attribute\012\000"
global 15 type=array 44 of char sclass=static scope=GLOBAL flags=generated ref=0.500000
defstring "Program compiled with 'register' attribute\012\000"
global 12 type=array 48 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Dhrystone Benchmark, Version 2.1 (Language: C)\012\000"
global 11 type=array 2 of char sclass=static scope=GLOBAL flags=generated ref=7.000000
defstring "\012\000"
global 8 type=array 31 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "DHRYSTONE PROGRAM, 1'ST STRING\000"
global 7 type=array 31 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "DHRYSTONE PROGRAM, SOME STRING\000"
progend
