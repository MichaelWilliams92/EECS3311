/*
 * Code for class DATE_TIME_PARSER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F208_5228(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F208_5229(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5230(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5231(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5232(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5233(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5234(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5235(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5236(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5237(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5238(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5239(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5240(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5241(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5242(EIF_REFERENCE);
extern void F208_5243(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F208_5244(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F208_5245(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F208_5246(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F208_5247(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5248(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5249(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5250(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5251(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5252(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5253(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5254(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5255(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5256(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5257(EIF_REFERENCE);
extern EIF_TYPED_VALUE F208_5258(EIF_REFERENCE);
extern void F208_5359(EIF_REFERENCE, int);
extern void EIF_Minit208(void);

#ifdef __cplusplus
}
#endif

#include <math.h>

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {DATE_TIME_PARSER}.make */
void F208_5228 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 1, 11201);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11201);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {542,138,181,0xFFFF};
			EIF_TYPE typres0;
			static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
			
			typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), typarr0)));
			RTCC(arg1, 207, l_feature_name, 1, typres0, 0x00);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("code_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 3948, 0xF800021E, 0); /* code */
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(3948, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("code_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3948, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {DATE_TIME_PARSER}.source_string */
EIF_TYPED_VALUE F208_5229 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(3922,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.year */
EIF_TYPED_VALUE F208_5230 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "year";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11203);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11203);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("value_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {DATE_TIME_PARSER}.month */
EIF_TYPED_VALUE F208_5231 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "month";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11204);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11204);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("value_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(3942, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {DATE_TIME_PARSER}.day */
EIF_TYPED_VALUE F208_5232 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "day";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11205);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11205);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("value_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(3943, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {DATE_TIME_PARSER}.hour */
EIF_TYPED_VALUE F208_5233 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hour";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11206);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11206);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("value_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {DATE_TIME_PARSER}.minute */
EIF_TYPED_VALUE F208_5234 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "minute";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11207);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11207);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("value_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(3945, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {DATE_TIME_PARSER}.fine_second */
EIF_TYPED_VALUE F208_5235 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "fine_second";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_REAL_64 Result = ((EIF_REAL_64) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_REAL64, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11208);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11208);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("value_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x20000000, 1,0); /* Result */
	Result = *(EIF_REAL_64 *)(Current + RTWA(3946, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL64; r.it_r8 = Result; return r; }
}

/* {DATE_TIME_PARSER}.day_text */
EIF_TYPED_VALUE F208_5236 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "day_text";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLIU(2);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11209);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11209);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("value_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF80000C2, 0,0); /* Result */
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3947, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
}

/* {DATE_TIME_PARSER}.parsed */
EIF_TYPED_VALUE F208_5237 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(3930,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.is_set_up */
EIF_TYPED_VALUE F208_5238 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_set_up";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLIU(3);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 207, Current, 1, 0, 11211);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11211);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	tb1 = '\0';
	tb2 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3950, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3949, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tb2 = (EIF_BOOLEAN)(tr1 != NULL);
	}
	if (tb2) {
		tb2 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3922, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = RTCCL(tr1);
		if (EIF_TEST(loc1)) {
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3341, "is_empty", loc1))(loc1)).it_b);
			tb2 = (EIF_BOOLEAN) !tb3;
		}
		tb1 = tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
}

/* {DATE_TIME_PARSER}.is_date */
EIF_TYPED_VALUE F208_5239 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_date";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {{0}, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11212);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11212);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("string_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3923, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3924, dtype))(Current)).it_i4);
	ui4_2 = ti4_2;
	ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3925, dtype))(Current)).it_i4);
	ui4_3 = ti4_3;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(3881, dtype))(Current, ui4_1x, ui4_2x, ui4_3x)).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ui4_1
#undef ui4_2
#undef ui4_3
}

/* {DATE_TIME_PARSER}.is_time */
EIF_TYPED_VALUE F208_5240 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_time";
	RTEX;
	EIF_TYPED_VALUE ur8_1x = {{0}, SK_REAL64};
#define ur8_1 ur8_1x.it_r8
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REAL_64 tr8_1;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11213);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11213);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("string_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3926, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3927, dtype))(Current)).it_i4);
	ui4_2 = ti4_2;
	tr8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3928, dtype))(Current)).it_r8);
	ur8_1 = tr8_1;
	ub1 = (EIF_BOOLEAN) 0;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(3851, dtype))(Current, ui4_1x, ui4_2x, ur8_1x, ub1x)).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ur8_1
#undef ui4_1
#undef ui4_2
#undef ub1
}

/* {DATE_TIME_PARSER}.is_date_time */
EIF_TYPED_VALUE F208_5241 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_date_time";
	RTEX;
	EIF_TYPED_VALUE ur8_1x = {{0}, SK_REAL64};
#define ur8_1 ur8_1x.it_r8
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {{0}, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {{0}, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ui4_5x = {{0}, SK_INT32};
#define ui4_5 ui4_5x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REAL_64 tr8_1;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11214);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11214);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("string_parsed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3923, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3924, dtype))(Current)).it_i4);
	ui4_2 = ti4_2;
	ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3925, dtype))(Current)).it_i4);
	ui4_3 = ti4_3;
	ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3926, dtype))(Current)).it_i4);
	ui4_4 = ti4_4;
	ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3927, dtype))(Current)).it_i4);
	ui4_5 = ti4_5;
	tr8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3928, dtype))(Current)).it_r8);
	ur8_1 = tr8_1;
	ub1 = (EIF_BOOLEAN) 0;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(3920, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x, ur8_1x, ub1x)).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ur8_1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ub1
}

/* {DATE_TIME_PARSER}.is_value_valid */
EIF_TYPED_VALUE F208_5242 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_value_valid";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 0, 11215);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11215);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	tb1 = '\0';
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
	if (tb2) {
		tb2 = '\01';
		tb3 = '\01';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3932, dtype))(Current)).it_b);
		if (!tb4) {
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3933, dtype))(Current)).it_b);
			tb3 = tb4;
		}
		if (!tb3) {
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3934, dtype))(Current)).it_b);
			tb2 = tb3;
		}
		tb1 = tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {DATE_TIME_PARSER}.set_source_string */
void F208_5243 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_source_string";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 1, 11216);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11216);
	if (arg1) {
		RTCC(arg1, 207, l_feature_name, 1, eif_new_type(194, 0x00), 0x00);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("non_empty_string", EX_PRE);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(arg1 != NULL)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3341, "is_empty", arg1))(arg1)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 3922, 0xF80000C2, 0); /* source_string */
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(3922, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 3930, 0x04000000, 1); /* parsed */
	*(EIF_BOOLEAN *)(Current + RTWA(3930, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("source_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3922, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("not_parsed", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {DATE_TIME_PARSER}.set_day_array */
void F208_5244 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_day_array";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 1, 11217);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11217);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {271,194,0xFFFF};
			EIF_TYPE typres0;
			static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
			
			typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), typarr0)));
			RTCC(arg1, 207, l_feature_name, 1, typres0, 0x00);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 3950, 0xF800010F, 0); /* days */
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(3950, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("days_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3950, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {DATE_TIME_PARSER}.set_month_array */
void F208_5245 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_month_array";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 1, 11218);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11218);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {271,194,0xFFFF};
			EIF_TYPE typres0;
			static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
			
			typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), typarr0)));
			RTCC(arg1, 207, l_feature_name, 1, typres0, 0x00);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 3949, 0xF800010F, 0); /* months */
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(3949, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("months_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3949, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {DATE_TIME_PARSER}.set_base_century */
void F208_5246 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_base_century";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 207, Current, 0, 1, 11219);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11219);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("base_century_valid", EX_PRE);
		RTTE((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 != ((EIF_INTEGER_32) 0L)) && (EIF_BOOLEAN)((EIF_INTEGER_32) (arg1 % ((EIF_INTEGER_32) 100L)) == ((EIF_INTEGER_32) 0L))), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 3951, 0x10000000, 1); /* base_century */
	*(EIF_INTEGER_32 *)(Current + RTWA(3951, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("base_century_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(3951, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {DATE_TIME_PARSER}.parse */
void F208_5247 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parse";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc8 = (EIF_BOOLEAN) 0;
	EIF_INTEGER_32 loc9 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc10 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc11 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc12 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc13 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc14 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc15 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc16 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REAL_64 tr8_1;
	EIF_REAL_64 tr8_2;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(9);
	RTLR(0,Current);
	RTLR(1,loc15);
	RTLR(2,tr1);
	RTLR(3,loc7);
	RTLR(4,ur1);
	RTLR(5,loc13);
	RTLR(6,tr2);
	RTLR(7,loc14);
	RTLR(8,loc16);
	RTLIU(9);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_BOOL, &loc8);
	RTLU(SK_INT32, &loc9);
	RTLU(SK_BOOL, &loc10);
	RTLU(SK_BOOL, &loc11);
	RTLU(SK_BOOL, &loc12);
	RTLU(SK_REF, &loc13);
	RTLU(SK_REF, &loc14);
	RTLU(SK_REF, &loc15);
	RTLU(SK_REF, &loc16);
	
	RTEAA(l_feature_name, 207, Current, 16, 0, 11220);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(207, Current, 11220);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("setup_complete", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3931, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTCT0("source_string_attached", EX_CHECK);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3922, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc15 = RTCCL(tr1);
	if (EIF_TEST(loc15)) {
		RTCK0;
	} else {
		RTCF0;
	}
	RTHOOK(3);
	RTDBGAL(Current, 7, 0xF80000C2, 0, 0); /* loc7 */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3386, "as_upper", loc15))(loc15)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc7 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 9, 0x10000000, 1, 0); /* loc9 */
	tr1 = RTLN(eif_new_type(1, 0x00).id);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(32, Dtype(tr1)))(tr1);
	RTNHOOK(4,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(41, "year_now", tr1))(tr1)).it_i4);
	loc9 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 3941, 0x10000000, 1); /* year_val */
	*(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 3942, 0x10000000, 1); /* month_val */
	*(EIF_INTEGER_32 *)(Current + RTWA(3942, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 3943, 0x10000000, 1); /* day_val */
	*(EIF_INTEGER_32 *)(Current + RTWA(3943, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
	*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(9);
	RTDBGAA(Current, dtype, 3945, 0x10000000, 1); /* minute_val */
	*(EIF_INTEGER_32 *)(Current + RTWA(3945, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(10);
	RTDBGAA(Current, dtype, 3946, 0x20000000, 1); /* fine_second_val */
	tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
	*(EIF_REAL_64 *)(Current + RTWA(3946, dtype)) = (EIF_REAL_64) tr8_1;
	RTHOOK(11);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(12);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(13);
	RTDBGAL(Current, 8, 0x04000000, 1, 0); /* loc8 */
	ur1 = RTCCL(loc7);
	loc8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(3823, dtype))(Current, ur1x)).it_b);
	RTHOOK(14);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(15);
		ti4_1 = *(EIF_INTEGER_32 *)(loc7 + RTVA(3484, "count", loc7));
		if ((EIF_BOOLEAN) (loc1 > ti4_1)) break;
		RTHOOK(16);
		RTDBGAL(Current, 13, 0xF800008A, 0, 0); /* loc13 */
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3948, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(16,1);
		ui4_1 = loc3;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1276, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		loc13 = (EIF_REFERENCE) RTCCL(tr2);
		RTHOOK(17);
		if ((EIF_BOOLEAN)(loc13 == NULL)) {
			RTHOOK(18);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			ti4_2 = *(EIF_INTEGER_32 *)(loc7 + RTVA(3484, "count", loc7));
			loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_2 + ((EIF_INTEGER_32) 1L));
		} else {
			RTHOOK(19);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2377, "is_separator_code", loc13))(loc13)).it_b);
			if (tb1) {
				RTHOOK(20);
				RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
				loc3++;
				RTHOOK(21);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				ti4_2 = *(EIF_INTEGER_32 *)(loc13 + RTVA(2380, "count_max", loc13));
				loc1 += ti4_2;
			} else {
				RTHOOK(22);
				if (loc8) {
					RTHOOK(23);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					ur1 = RTCCL(loc7);
					ui4_1 = loc1;
					loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(3821, dtype))(Current, ur1x, ui4_1x)).it_i4);
				} else {
					RTHOOK(24);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					ti4_2 = *(EIF_INTEGER_32 *)(loc13 + RTVA(2380, "count_max", loc13));
					loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) ((EIF_INTEGER_32) (loc1 + ti4_2) - ((EIF_INTEGER_32) 1L)) * ((EIF_INTEGER_32) -1L));
				}
				RTHOOK(25);
				RTDBGAL(Current, 14, 0xF80000C2, 0, 0); /* loc14 */
				ur1 = RTCCL(loc7);
				ui4_1 = loc1;
				ui4_2 = loc2;
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(3822, dtype))(Current, ur1x, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(25,1);
				tr2 = eif_boxed_item(tr1,1);
				loc14 = (EIF_REFERENCE) RTCCL(tr2);
				RTHOOK(26);
				if ((EIF_BOOLEAN) (loc2 <= ((EIF_INTEGER_32) 0L))) {
					RTHOOK(27);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) -loc2 + ((EIF_INTEGER_32) 1L));
				}
				RTHOOK(28);
				RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
				ti4_2 = *(EIF_INTEGER_32 *)(loc13 + RTVA(2385, "type", loc13));
				loc5 = (EIF_INTEGER_32) ti4_2;
				RTHOOK(29);
				switch (loc5) {
					case 1L:
					case 2L:
						RTHOOK(30);
						RTDBGAA(Current, dtype, 3943, 0x10000000, 1); /* day_val */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
						*(EIF_INTEGER_32 *)(Current + RTWA(3943, dtype)) = (EIF_INTEGER_32) ti4_2;
						break;
					case 3L:
						RTHOOK(31);
						RTDBGAA(Current, dtype, 3947, 0xF80000C2, 0); /* day_text_val */
						RTAR(Current, loc14);
						*(EIF_REFERENCE *)(Current + RTWA(3947, dtype)) = (EIF_REFERENCE) RTCCL(loc14);
						break;
					case 4L:
						RTHOOK(32);
						RTDBGAA(Current, dtype, 3941, 0x10000000, 1); /* year_val */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
						*(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype)) = (EIF_INTEGER_32) ti4_2;
						break;
					case 5L:
						RTHOOK(33);
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(3951, dtype));
						if ((EIF_BOOLEAN) (ti4_2 < ((EIF_INTEGER_32) 0L))) {
							RTHOOK(34);
							RTDBGAA(Current, dtype, 3941, 0x10000000, 1); /* year_val */
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(3951, dtype));
							*(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_2 - ti4_3);
							RTHOOK(35);
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype));
							if ((EIF_BOOLEAN) ((EIF_INTEGER_32) (ti4_2 - loc9) > ((EIF_INTEGER_32) 50L))) {
								RTHOOK(36);
								RTDBGAA(Current, dtype, 3941, 0x10000000, 1); /* year_val */
								(*(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype))) -= ((EIF_INTEGER_32) 100L);
							} else {
								RTHOOK(37);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype));
								if ((EIF_BOOLEAN) ((EIF_INTEGER_32) (loc9 - ti4_2) > ((EIF_INTEGER_32) 50L))) {
									RTHOOK(38);
									RTDBGAA(Current, dtype, 3941, 0x10000000, 1); /* year_val */
									(*(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype))) += ((EIF_INTEGER_32) 100L);
								}
							}
						} else {
							RTHOOK(39);
							RTDBGAA(Current, dtype, 3941, 0x10000000, 1); /* year_val */
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(3951, dtype));
							*(EIF_INTEGER_32 *)(Current + RTWA(3941, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_2 - ti4_3);
						}
						break;
					case 6L:
					case 7L:
						RTHOOK(40);
						RTDBGAA(Current, dtype, 3942, 0x10000000, 1); /* month_val */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
						*(EIF_INTEGER_32 *)(Current + RTWA(3942, dtype)) = (EIF_INTEGER_32) ti4_2;
						break;
					case 8L:
						RTHOOK(41);
						RTCT0("months_attached", EX_CHECK);
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3949, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						loc16 = RTCCL(tr1);
						if (EIF_TEST(loc16)) {
							RTCK0;
						} else {
							RTCF0;
						}
						RTHOOK(42);
						RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
						loc4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						for (;;) {
							RTHOOK(43);
							if ((EIF_BOOLEAN) (loc4 > ((EIF_INTEGER_32) 12L))) break;
							RTHOOK(44);
							ui4_1 = loc4;
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1276, "item", loc16))(loc16, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(44,1);
							ur1 = RTCCL(loc14);
							tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(3470, "same_string", tr1))(tr1, ur1x)).it_b);
							if (tb1) {
								RTHOOK(45);
								RTDBGAA(Current, dtype, 3942, 0x10000000, 1); /* month_val */
								*(EIF_INTEGER_32 *)(Current + RTWA(3942, dtype)) = (EIF_INTEGER_32) loc4;
							}
							RTHOOK(46);
							RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
							loc4++;
						}
						break;
					case 9L:
					case 10L:
						RTHOOK(47);
						RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
						*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype)) = (EIF_INTEGER_32) ti4_2;
						break;
					case 11L:
					case 12L:
						RTHOOK(48);
						RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
						*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype)) = (EIF_INTEGER_32) ti4_2;
						RTHOOK(49);
						if (loc11) {
							RTHOOK(50);
							if (loc10) {
								RTHOOK(51);
								RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
								(*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype))) += ((EIF_INTEGER_32) 12L);
								RTHOOK(52);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype));
								if ((EIF_BOOLEAN)(ti4_2 == ((EIF_INTEGER_32) 24L))) {
									RTHOOK(53);
									RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
									*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 12L);
								}
							} else {
								RTHOOK(54);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype));
								if ((EIF_BOOLEAN)(ti4_2 == ((EIF_INTEGER_32) 12L))) {
									RTHOOK(55);
									RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
									*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
								}
							}
						} else {
							RTHOOK(56);
							RTDBGAL(Current, 12, 0x04000000, 1, 0); /* loc12 */
							loc12 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
						}
						break;
					case 24L:
						RTHOOK(57);
						RTDBGAL(Current, 11, 0x04000000, 1, 0); /* loc11 */
						loc11 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
						RTHOOK(58);
						RTDBGAL(Current, 10, 0x04000000, 1, 0); /* loc10 */
						tr1 = RTMS_EX_H("PM",2,20557);
						ur1 = tr1;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(3468, "is_case_insensitive_equal", loc14))(loc14, ur1x)).it_b);
						loc10 = (EIF_BOOLEAN) tb1;
						break;
					case 13L:
					case 14L:
						RTHOOK(59);
						RTDBGAA(Current, dtype, 3945, 0x10000000, 1); /* minute_val */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
						*(EIF_INTEGER_32 *)(Current + RTWA(3945, dtype)) = (EIF_INTEGER_32) ti4_2;
						break;
					case 15L:
					case 16L:
						RTHOOK(60);
						RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3389, "to_integer", loc14))(loc14)).it_i4);
						loc6 = (EIF_INTEGER_32) ti4_2;
						break;
					case 17L:
						RTHOOK(61);
						RTDBGAA(Current, dtype, 3946, 0x20000000, 1); /* fine_second_val */
						tr8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3399, "to_double", loc14))(loc14)).it_r8);
						ti4_2 = *(EIF_INTEGER_32 *)(loc14 + RTVA(3484, "count", loc14));
						tr8_2 = (EIF_REAL_64) ((ti4_2));
						*(EIF_REAL_64 *)(Current + RTWA(3946, dtype)) = (EIF_REAL_64) (EIF_REAL_64) ((EIF_REAL_64) (tr8_1) /  (EIF_REAL_64) ((EIF_REAL_64) pow ((EIF_REAL_64) (((EIF_INTEGER_32) 10L)), (EIF_REAL_64) (tr8_2))));
						break;
					default:
						RTEC(EN_WHEN);
				}
				RTHOOK(62);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				loc1 = (EIF_INTEGER_32) loc2;
				RTHOOK(63);
				RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
				loc3++;
			}
		}
	}
	RTHOOK(64);
	if (loc12) {
		RTHOOK(65);
		if ((EIF_BOOLEAN) !loc11) {
			RTHOOK(66);
			ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype));
			if ((EIF_BOOLEAN)(ti4_2 == ((EIF_INTEGER_32) 12L))) {
				RTHOOK(67);
				RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
				*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			}
		} else {
			RTHOOK(68);
			if (loc10) {
				RTHOOK(69);
				RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
				(*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype))) += ((EIF_INTEGER_32) 12L);
				RTHOOK(70);
				ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype));
				if ((EIF_BOOLEAN)(ti4_2 == ((EIF_INTEGER_32) 24L))) {
					RTHOOK(71);
					RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
					*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 12L);
				}
			} else {
				RTHOOK(72);
				ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype));
				if ((EIF_BOOLEAN)(ti4_2 == ((EIF_INTEGER_32) 12L))) {
					RTHOOK(73);
					RTDBGAA(Current, dtype, 3944, 0x10000000, 1); /* hour_val */
					*(EIF_INTEGER_32 *)(Current + RTWA(3944, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
				}
			}
		}
	}
	RTHOOK(74);
	RTDBGAA(Current, dtype, 3946, 0x20000000, 1); /* fine_second_val */
	tr8_2 = (EIF_REAL_64) (loc6);
	(*(EIF_REAL_64 *)(Current + RTWA(3946, dtype))) += tr8_2;
	RTHOOK(75);
	RTDBGAA(Current, dtype, 3930, 0x04000000, 1); /* parsed */
	*(EIF_BOOLEAN *)(Current + RTWA(3930, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(76);
		RTCT("string_parsed", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(77);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(18);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
}

/* {DATE_TIME_PARSER}.year_val */
EIF_TYPED_VALUE F208_5248 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(3941,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.month_val */
EIF_TYPED_VALUE F208_5249 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(3942,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.day_val */
EIF_TYPED_VALUE F208_5250 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(3943,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.hour_val */
EIF_TYPED_VALUE F208_5251 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(3944,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.minute_val */
EIF_TYPED_VALUE F208_5252 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(3945,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.fine_second_val */
EIF_TYPED_VALUE F208_5253 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REAL64;
	r.it_r8 = *(EIF_REAL_64 *)(Current + RTWA(3946,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.day_text_val */
EIF_TYPED_VALUE F208_5254 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(3947,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.code */
EIF_TYPED_VALUE F208_5255 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(3948,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.months */
EIF_TYPED_VALUE F208_5256 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(3949,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.days */
EIF_TYPED_VALUE F208_5257 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(3950,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}.base_century */
EIF_TYPED_VALUE F208_5258 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(3951,Dtype(Current)));
	return r;
}


/* {DATE_TIME_PARSER}._invariant */
void F208_5359 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 207, Current, 0, 5358);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("valid_value_definition", Current);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3935, dtype))(Current)).it_b);
	tb2 = '\0';
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
	if (tb3) {
		tb3 = '\01';
		tb4 = '\01';
		tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3932, dtype))(Current)).it_b);
		if (!tb5) {
			tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3933, dtype))(Current)).it_b);
			tb4 = tb5;
		}
		if (!tb4) {
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3934, dtype))(Current)).it_b);
			tb3 = tb4;
		}
		tb2 = tb3;
	}
	if ((EIF_BOOLEAN)(tb1 == tb2)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("valid_value_implies_parsing", Current);
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3935, dtype))(Current)).it_b);
	if (tb2) {
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(3930, dtype));
		tb1 = tb2;
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit208 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
