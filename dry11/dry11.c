# 1 "dryr.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 330 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "dryr.c" 2
# 409 "dryr.c"
char Version[] = "1.1";
# 426 "dryr.c"
typedef enum {Ident1, Ident2, Ident3, Ident4, Ident5} Enumeration;


typedef int OneToThirty;
typedef int OneToFifty;
typedef char CapitalLetter;
typedef char String30[31];
typedef int Array1Dim[51];
typedef int Array2Dim[51][51];

struct Record
{
 struct Record *PtrComp;
 Enumeration Discr;
 Enumeration EnumComp;
 OneToFifty IntComp;
 String30 StringComp;
};

struct Record GlbNext, Glb;

typedef struct Record RecordType;
typedef RecordType *RecordPtr;
typedef int boolean;
# 457 "dryr.c"
extern Enumeration Func1();
extern boolean Func2();
# 470 "dryr.c"
main()
{
 Proc0();
 exit(0);
}




int IntGlob;
boolean BoolGlob;
char Char1Glob;
char Char2Glob;
Array1Dim Array1Glob;
Array2Dim Array2Glob;
RecordPtr PtrGlb;
RecordPtr PtrGlbNext;

Proc0()
{
 OneToFifty IntLoc1;
 OneToFifty IntLoc2;
 OneToFifty IntLoc3;
     char CharLoc;
     char CharIndex;
 Enumeration EnumLoc;
 String30 String1Loc;
 String30 String2Loc;
 extern char *malloc();

 unsigned int i;
# 534 "dryr.c"

 PtrGlbNext = &GlbNext;
 PtrGlb = &Glb;
 PtrGlb->PtrComp = PtrGlbNext;
 PtrGlb->Discr = Ident1;
 PtrGlb->EnumComp = Ident3;
 PtrGlb->IntComp = 40;
 strcopy(PtrGlb->StringComp, "DHRYSTONE PROGRAM, SOME STRING");

 strcopy(String1Loc, "DHRYSTONE PROGRAM, 1'ST STRING");

 Array2Glob[8][7] = 10;
# 558 "dryr.c"
 for (i = 0; i < (unsigned int)1; ++i)
 {

  Proc5();
  Proc4();
  IntLoc1 = 2;
  IntLoc2 = 3;
  strcopy(String2Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
  EnumLoc = Ident2;
  BoolGlob = ! Func2(String1Loc, String2Loc);
  while (IntLoc1 < IntLoc2)
  {
   IntLoc3 = 5 * IntLoc1 - IntLoc2;
   Proc7(IntLoc1, IntLoc2, &IntLoc3);
   ++IntLoc1;
  }
  Proc8(Array1Glob, Array2Glob, IntLoc1, IntLoc3);
  Proc1(PtrGlb);
  for (CharIndex = 'A'; CharIndex <= Char2Glob; ++CharIndex)
   if (EnumLoc == Func1(CharIndex, 'C'))
    Proc6(Ident1, &EnumLoc);
  IntLoc3 = IntLoc2 * IntLoc1;
  IntLoc2 = IntLoc3 / IntLoc1;
  IntLoc2 = 7 * (IntLoc3 - IntLoc2) - IntLoc1;
  Proc2(&IntLoc1);
 }
# 624 "dryr.c"

}

Proc1(PtrParIn)
    RecordPtr PtrParIn;
{


 memcpy(&((*(PtrParIn->PtrComp))), &(*PtrGlb), (unsigned int)sizeof((*(PtrParIn->PtrComp))));
 PtrParIn->IntComp = 5;
 (*(PtrParIn->PtrComp)).IntComp = PtrParIn->IntComp;
 (*(PtrParIn->PtrComp)).PtrComp = PtrParIn->PtrComp;
 Proc3((*(PtrParIn->PtrComp)).PtrComp);
 if ((*(PtrParIn->PtrComp)).Discr == Ident1)
 {
  (*(PtrParIn->PtrComp)).IntComp = 6;
  Proc6(PtrParIn->EnumComp, &(*(PtrParIn->PtrComp)).EnumComp);
  (*(PtrParIn->PtrComp)).PtrComp = PtrGlb->PtrComp;
  Proc7((*(PtrParIn->PtrComp)).IntComp, 10, &(*(PtrParIn->PtrComp)).IntComp);
 }
 else
  memcpy(&(*PtrParIn), &((*(PtrParIn->PtrComp))), (unsigned int)sizeof(*PtrParIn));


}

Proc2(IntParIO)
OneToFifty *IntParIO;
{
     OneToFifty IntLoc;
     Enumeration EnumLoc;

 IntLoc = *IntParIO + 10;
 for(;;)
 {
  if (Char1Glob == 'A')
  {
   --IntLoc;
   *IntParIO = IntLoc - IntGlob;
   EnumLoc = Ident1;
  }
  if (EnumLoc == Ident1)
   break;
 }
}

Proc3(PtrParOut)
RecordPtr *PtrParOut;
{
 if (PtrGlb != 0)
  *PtrParOut = PtrGlb->PtrComp;
 else
  IntGlob = 100;
 Proc7(10, IntGlob, &PtrGlb->IntComp);
}

Proc4()
{
     boolean BoolLoc;

 BoolLoc = Char1Glob == 'A';
 BoolLoc |= BoolGlob;
 Char2Glob = 'B';
}

Proc5()
{
 Char1Glob = 'A';
 BoolGlob = 0;
}

extern boolean Func3();

Proc6(EnumParIn, EnumParOut)
    Enumeration EnumParIn;
    Enumeration *EnumParOut;
{
 *EnumParOut = EnumParIn;
 if (! Func3(EnumParIn) )
  *EnumParOut = Ident4;
 switch (EnumParIn)
 {
 case Ident1: *EnumParOut = Ident1; break;
 case Ident2: if (IntGlob > 100) *EnumParOut = Ident1;
   else *EnumParOut = Ident4;
   break;
 case Ident3: *EnumParOut = Ident2; break;
 case Ident4: break;
 case Ident5: *EnumParOut = Ident3;
 }
}

Proc7(IntParI1, IntParI2, IntParOut)
OneToFifty IntParI1;
OneToFifty IntParI2;
OneToFifty *IntParOut;
{
     OneToFifty IntLoc;

 IntLoc = IntParI1 + 2;
 *IntParOut = IntParI2 + IntLoc;
}

Proc8(Array1Par, Array2Par, IntParI1, IntParI2)
Array1Dim Array1Par;
Array2Dim Array2Par;
OneToFifty IntParI1;
OneToFifty IntParI2;
{
     OneToFifty IntLoc;
     OneToFifty IntIndex;

 IntLoc = IntParI1 + 5;
 Array1Par[IntLoc] = IntParI2;
 Array1Par[IntLoc+1] = Array1Par[IntLoc];
 Array1Par[IntLoc+30] = IntLoc;
 for (IntIndex = IntLoc; IntIndex <= (IntLoc+1); ++IntIndex)
  Array2Par[IntLoc][IntIndex] = IntLoc;
 ++Array2Par[IntLoc][IntLoc-1];
 Array2Par[IntLoc+20][IntLoc] = Array1Par[IntLoc];
 IntGlob = 5;
}

Enumeration Func1(CharPar1, CharPar2)
CapitalLetter CharPar1;
CapitalLetter CharPar2;
{
     CapitalLetter CharLoc1;
     CapitalLetter CharLoc2;

 CharLoc1 = CharPar1;
 CharLoc2 = CharLoc1;
 if (CharLoc2 != CharPar2)
  return (Ident1);
 else
  return (Ident2);
}

boolean Func2(StrParI1, StrParI2)
String30 StrParI1;
String30 StrParI2;
{
     OneToThirty IntLoc;
     CapitalLetter CharLoc;

 IntLoc = 1;
 while (IntLoc <= 1)
	 //printf(1, "intloc: %x\n", IntLoc);
  if (Func1(StrParI1[IntLoc], StrParI2[IntLoc+1]) == Ident1)
  {
   CharLoc = 'A';
   ++IntLoc;
  }
 if (CharLoc >= 'W' && CharLoc <= 'Z')
  IntLoc = 7;
 if (CharLoc == 'X')
  return(1);
 else
 {
  if (strcmp(StrParI1, StrParI2) > 0)
  {
   IntLoc += 7;
   return (1);
  }
  else
   return (0);
 }
}

boolean Func3(EnumParIn)
    Enumeration EnumParIn;
{
     Enumeration EnumLoc;

 EnumLoc = EnumParIn;
 if (EnumLoc == Ident3) return (1);
 return (0);
}


memcpy(d, s, l)
register char *d;
register char *s;
register int l;
{
 while (l--) *d++ = *s++;
}
