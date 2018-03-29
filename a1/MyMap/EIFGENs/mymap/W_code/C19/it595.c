/*
 * Code for class ITEM [CHARACTER_8, INTEGER_32]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F595_64(EIF_REFERENCE);
extern EIF_TYPED_VALUE F595_65(EIF_REFERENCE);
extern void F595_66(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F595_67(EIF_REFERENCE);
extern EIF_TYPED_VALUE F595_68(EIF_REFERENCE);
extern void F595_5296(EIF_REFERENCE, int);
extern void EIF_Minit595(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {ITEM}.key */
EIF_TYPED_VALUE F595_64 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = *(EIF_CHARACTER_8 *)(Current + RTWA(66,Dtype(Current)));
	return r;
}


/* {ITEM}.value */
EIF_TYPED_VALUE F595_65 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(67,Dtype(Current)));
	return r;
}


/* {ITEM}.make */
void F595_66 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
#define arg1 arg1x.it_c1
#define arg2 arg2x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_c1 = * (EIF_CHARACTER_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_CHAR8,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 594, Current, 0, 2, 75);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(594, Current, 75);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT(NULL, EX_PRE);
		RTTE(EIF_TRUE, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 66, 0x08000000, 0); /* key */
	*(EIF_CHARACTER_8 *)(Current + RTWA(66, dtype)) = (EIF_CHARACTER_8) arg1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 67, 0x10000000, 0); /* value */
	*(EIF_INTEGER_32 *)(Current + RTWA(67, dtype)) = (EIF_INTEGER_32) arg2;
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT(NULL, EX_POST);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(66, dtype));
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(67, dtype));
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 == tc1) && (EIF_BOOLEAN)(ti4_1 == arg2))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef arg2
#undef arg1
}

/* {ITEM}.getkey */
EIF_TYPED_VALUE F595_67 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "getkey";
	RTEX;
	EIF_CHARACTER_8 Result = ((EIF_CHARACTER_8) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_CHAR8, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 594, Current, 0, 0, 76);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(594, Current, 76);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x08000000, 0,0); /* Result */
	Result = *(EIF_CHARACTER_8 *)(Current + RTWA(66, Dtype(Current)));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_CHAR8; r.it_c1 = Result; return r; }
}

/* {ITEM}.getvalue */
EIF_TYPED_VALUE F595_68 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "getvalue";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 594, Current, 0, 0, 77);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(594, Current, 77);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 0,0); /* Result */
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(67, Dtype(Current)));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {ITEM}._invariant */
void F595_5296 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 594, Current, 0, 5295);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("invariant_clause", Current);
	tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(66, dtype));
	if (EIF_TRUE) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit595 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
