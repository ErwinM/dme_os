# 1 "dhry.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 330 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "dhry.c" 2
# 18 "dhry.c"
# 1 "./dhry.h" 1
# 389 "./dhry.h"
  typedef enum {Ident_1, Ident_2, Ident_3, Ident_4, Ident_5}
                Enumeration;
# 404 "./dhry.h"
typedef int One_Thirty;
typedef int One_Fifty;
typedef char Capital_Letter;
typedef int Boolean;
typedef char Str_30 [31];
typedef int Arr_1_Dim [50];
typedef int Arr_2_Dim [50] [50];

typedef struct record
    {
    struct record *Ptr_Comp;
    Enumeration Discr;
    union {
          struct {
                  Enumeration Enum_Comp;
                  int Int_Comp;
                  char Str_Comp [31];
                  } var_1;
          struct {
                  Enumeration E_Comp_2;
                  char Str_2_Comp [31];
                  } var_2;
          struct {
                  char Ch_1_Comp;
                  char Ch_2_Comp;
                  } var_3;
          } variant;
      } Rec_Type, *Rec_Pointer;
# 19 "dhry.c" 2

//Number_Of_Runs = (unsigned int)5000;

Rec_Pointer Ptr_Glob,
                Next_Ptr_Glob;
int Int_Glob;
Boolean Bool_Glob;
char Ch_1_Glob,
                Ch_2_Glob;
int Arr_1_Glob [50];
int Arr_2_Glob [50] [50];

Rec_Type nomalloc1, nomalloc2;


Enumeration Func_1 ();



        Boolean Reg = 0;
# 77 "dhry.c"
main ()




{
        One_Fifty Int_1_Loc;
        One_Fifty Int_2_Loc;
        One_Fifty Int_3_Loc;
        char Ch_Index;
        Enumeration Enum_Loc;
        Str_30 Str_1_Loc;
        Str_30 Str_2_Loc;
        int Run_Index;
        unsigned int Number_Of_Runs;
				char c;
				int term;



  Next_Ptr_Glob = &nomalloc1;
  Ptr_Glob = &nomalloc2;

  Ptr_Glob->Ptr_Comp = Next_Ptr_Glob;
  Ptr_Glob->Discr = Ident_1;
  Ptr_Glob->variant.var_1.Enum_Comp = Ident_3;
  Ptr_Glob->variant.var_1.Int_Comp = 40;
  strcpy (Ptr_Glob->variant.var_1.Str_Comp, "DHRYSTONE PROGRAM, SOME STRING");
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");

  Arr_2_Glob [8][7] = 10;


	Number_Of_Runs = (unsigned int)1;



  printf("Dhrystone Benchmark, Version 2.1 (Language: C)\n");
  printf ("\n");




  printf ("Program compiled without 'register' attribute\n");
  printf ("\n");

  printf ("Please give the number of runs through the benchmark: ");

  printf ("\n");
  printf ("Execution starts after keypress, %d runs through Dhrystone\n", Number_Of_Runs);
	//term = open("/console", 0);
	gets(0, &c, 1);
# 153 "dhry.c"
  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
  {
		//printf("run: %d of %d", Run_Index, Number_Of_Runs);
    Proc_5();
		//printf("Post5: 41=%x, 42=%x, Bool=%d\n", Ch_1_Glob, Ch_2_Glob, Bool_Glob );
    Proc_4();
		/* Ch_1_Glob == 'A', Ch_2_Glob == 'B', Bool_Glob == true */
		//printf("Post4: 41=%x, 42=%x, Bool=%d\n", Ch_1_Glob, Ch_2_Glob, Bool_Glob );
		Int_1_Loc = 2;
    Int_2_Loc = 3;
    strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
    Enum_Loc = Ident_2;
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);

    while (Int_1_Loc < Int_2_Loc)
    {
      Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;

      Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);

      Int_1_Loc += 1;
    }

    Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);

    Proc_1 (Ptr_Glob);
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)

    {
      if (Enum_Loc == Func_1 (Ch_Index, 'C'))

        {
        Proc_6 (Ident_1, &Enum_Loc);
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
        Int_2_Loc = Run_Index;
        Int_Glob = Run_Index;
        }
    }
		/* Int_1_Loc == 3, Int_2_Loc == 3, Int_3_Loc == 7 */
		//printf("1. I1L %d, I2L %d, I3L %d\n", Int_1_Loc, Int_2_Loc, Int_3_Loc);
    //breek();
		Int_2_Loc = Int_2_Loc * Int_1_Loc;
    //printf("2. I1L %d, I2L %d(9), I3L %d\n", Int_1_Loc, Int_2_Loc, Int_3_Loc);
		//breek();
		Int_1_Loc = Int_2_Loc / Int_3_Loc;

		//printf("3. I1L %d(1), I2L %d, I3L %d\n", Int_1_Loc, Int_2_Loc, Int_3_Loc);
    Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
		//printf("main: Int_2 finishes at: %d\n", Int_2_Loc);
    Proc_2 (&Int_1_Loc);


  }
# 214 "dhry.c"
  printf ("Execution ends\n");
  printf ("\n");
  printf ("Final values of the variables used in the benchmark:\n");
  printf ("\n");
  printf ("Int_Glob:            %d\n", Int_Glob);
  printf ("        should be:   %d\n", 5);
  printf ("Bool_Glob:           %d\n", Bool_Glob);
  printf ("        should be:   %d\n", 1);
  printf ("Ch_1_Glob:           %c\n", Ch_1_Glob);
  printf ("        should be:   %c\n", 'A');
  printf ("Ch_2_Glob:           %c\n", Ch_2_Glob);
  printf ("        should be:   %c\n", 'B');
  printf ("Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
  printf ("        should be:   %d\n", 7);
  printf ("Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
  printf ("        should be:   Number_Of_Runs + 10\n");
  printf ("Ptr_Glob->\n");
  printf ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
  printf ("        should be:   (implementation-dependent)\n");
  printf ("  Discr:             %d\n", Ptr_Glob->Discr);
  printf ("        should be:   %d\n", 0);
  printf ("  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
  printf ("        should be:   %d\n", 2);
  printf ("  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
  printf ("        should be:   %d\n", 17);
  printf ("  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
  printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
  printf ("Next_Ptr_Glob->\n");
  printf ("  Ptr_Comp:          %d\n", (int) Next_Ptr_Glob->Ptr_Comp);
  printf ("        should be:   (implementation-dependent), same as above\n");
  printf ("  Discr:             %d\n", Next_Ptr_Glob->Discr);
  printf ("        should be:   %d\n", 0);
  printf ("  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
  printf ("        should be:   %d\n", 1);
  printf ("  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
  printf ("        should be:   %d\n", 18);
  printf ("  Str_Comp:          %s\n",
                                Next_Ptr_Glob->variant.var_1.Str_Comp);
  printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
  printf ("Int_1_Loc:           %d\n", Int_1_Loc);
  printf ("        should be:   %d\n", 5);
  printf ("Int_2_Loc:           %d\n", Int_2_Loc);
  printf ("        should be:   %d\n", 13);
  printf ("Int_3_Loc:           %d\n", Int_3_Loc);
  printf ("        should be:   %d\n", 7);
  printf ("Enum_Loc:            %d\n", Enum_Loc);
  printf ("        should be:   %d\n", 1);
  printf ("Str_1_Loc:           %s\n", Str_1_Loc);
  printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
  printf ("Str_2_Loc:           %s\n", Str_2_Loc);
  printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
//   printf ("\n");
# 294 "dhry.c"
 exit();
}

Proc_1(Ptr_Val_Par)


    Rec_Pointer Ptr_Val_Par;

{

			Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;



	//printf("Enter Proc_1");
  memcpy(&(*Ptr_Val_Par->Ptr_Comp), &(*Ptr_Glob), (unsigned int)sizeof(*Ptr_Val_Par->Ptr_Comp));
  Ptr_Val_Par->variant.var_1.Int_Comp = 5;
  Next_Record->variant.var_1.Int_Comp
        = Ptr_Val_Par->variant.var_1.Int_Comp;
  Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
  Proc_3 (&Next_Record->Ptr_Comp);


  if (Next_Record->Discr == Ident_1)

  {
    Next_Record->variant.var_1.Int_Comp = 6;
    Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp,
           &Next_Record->variant.var_1.Enum_Comp);
    Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
    Proc_7 (Next_Record->variant.var_1.Int_Comp, 10,
           &Next_Record->variant.var_1.Int_Comp);
  }
  else
    memcpy(&(*Ptr_Val_Par), &(*Ptr_Val_Par->Ptr_Comp), (unsigned int)sizeof(*Ptr_Val_Par));
}


Proc_2 (Int_Par_Ref)




One_Fifty *Int_Par_Ref;
{
  One_Fifty Int_Loc;
  Enumeration Enum_Loc;
	//printf("Enter Proc_2: %x", Int_Par_Ref);
  Int_Loc = *Int_Par_Ref + 10;
  do
    if (Ch_1_Glob == 'A')

    {
      Int_Loc -= 1;
      *Int_Par_Ref = Int_Loc - Int_Glob;
			//printf("Proc_2 returns: %d\n", *Int_Par_Ref);
      Enum_Loc = Ident_1;
    }
  while (Enum_Loc != Ident_1);
}


Proc_3 (Ptr_Ref_Par)




Rec_Pointer *Ptr_Ref_Par;

{
  //printf("Enter Proc_3");
	if (Ptr_Glob != 0)

    *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
  Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
}


Proc_4 ()


{
  Boolean Bool_Loc;
	//printf("Enter Proc_4");
  Bool_Loc = Ch_1_Glob == 'A';
  Bool_Glob = Bool_Loc | Bool_Glob;
  Ch_2_Glob = 'B';
}


Proc_5 ()


{
  //printf("Enter Proc_5");
	Ch_1_Glob = 'A';
  Bool_Glob = 0;
}





memcpy (d, s, l)
register char *d;
register char *s;
register int l;
{
  while (l--) *d++ = *s++;
}
# 434 "dhry.c"
Proc_6 (Enum_Val_Par, Enum_Ref_Par)




Enumeration Enum_Val_Par;
Enumeration *Enum_Ref_Par;
{
	//printf("Enter Proc_6");
	*Enum_Ref_Par = Enum_Val_Par;
  if (! Func_3 (Enum_Val_Par))

    *Enum_Ref_Par = Ident_4;
  switch (Enum_Val_Par)
  {
    case Ident_1:
      *Enum_Ref_Par = Ident_1;
      break;
    case Ident_2:
      if (Int_Glob > 100)

      *Enum_Ref_Par = Ident_1;
      else *Enum_Ref_Par = Ident_4;
      break;
    case Ident_3:
      *Enum_Ref_Par = Ident_2;
      break;
    case Ident_4: break;
    case Ident_5:
      *Enum_Ref_Par = Ident_3;
      break;
  }
}


Proc_7 (Int_1_Par_Val, Int_2_Par_Val, Int_Par_Ref)
# 477 "dhry.c"
One_Fifty Int_1_Par_Val;
One_Fifty Int_2_Par_Val;
One_Fifty *Int_Par_Ref;
{
  One_Fifty Int_Loc;
	//printf("Enter Proc_7");
  Int_Loc = Int_1_Par_Val + 2;
  *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
	//printf("proc_7: returns: %d\n", *Int_Par_Ref);
}


Proc_8 (Arr_1_Par_Ref, Arr_2_Par_Ref, Int_1_Par_Val, Int_2_Par_Val)




Arr_1_Dim Arr_1_Par_Ref;
Arr_2_Dim Arr_2_Par_Ref;
int Int_1_Par_Val;
int Int_2_Par_Val;
{
      One_Fifty Int_Index;
      One_Fifty Int_Loc;

	//printf("Enter Proc_8");
	Int_Loc = Int_1_Par_Val + 5;
  Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
  Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
  Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
  for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
    Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
  Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
  Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
  Int_Glob = 5;
}


Enumeration Func_1 (Ch_1_Par_Val, Ch_2_Par_Val)






Capital_Letter Ch_1_Par_Val;
Capital_Letter Ch_2_Par_Val;
{
  Capital_Letter Ch_1_Loc;
  Capital_Letter Ch_2_Loc;

  //printf("Enter Func_1");
	Ch_1_Loc = Ch_1_Par_Val;
  Ch_2_Loc = Ch_1_Loc;
  if (Ch_2_Loc != Ch_2_Par_Val)

    return (Ident_1);
  else
  {
    Ch_1_Glob = Ch_1_Loc;
    return (Ident_2);
   }
}


Boolean Func_2 (Str_1_Par_Ref, Str_2_Par_Ref)





Str_30 Str_1_Par_Ref;
Str_30 Str_2_Par_Ref;
{
      One_Thirty Int_Loc;
      Capital_Letter Ch_Loc;

	//printf("Enter Func_2");
	Int_Loc = 2;
  while (Int_Loc <= 2)
    if (Func_1 (Str_1_Par_Ref[Int_Loc],
                Str_2_Par_Ref[Int_Loc+1]) == Ident_1)

    {
      Ch_Loc = 'A';
      Int_Loc += 1;
    }
  if (Ch_Loc >= 'W' && Ch_Loc < 'Z')

    Int_Loc = 7;
  if (Ch_Loc == 'R')

    return (1);
  else
  {
    if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)

    {
      Int_Loc += 7;
      Int_Glob = Int_Loc;
      return (1);
    }
    else
      return (0);
  }
}


Boolean Func_3 (Enum_Par_Val)



Enumeration Enum_Par_Val;
{
  Enumeration Enum_Loc;

  Enum_Loc = Enum_Par_Val;
  if (Enum_Loc == Ident_3)

    return (1);
  else
    return (0);
}
