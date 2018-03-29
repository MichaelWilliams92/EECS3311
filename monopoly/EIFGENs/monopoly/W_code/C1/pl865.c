/*
 * Code for class PLAYER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F865_6986(EIF_REFERENCE);
extern EIF_TYPED_VALUE F865_6987(EIF_REFERENCE);
extern EIF_TYPED_VALUE F865_6988(EIF_REFERENCE);
extern EIF_TYPED_VALUE F865_6989(EIF_REFERENCE);
extern EIF_TYPED_VALUE F865_6990(EIF_REFERENCE);
extern void F865_6991(EIF_REFERENCE);
extern void EIF_Minit865(void);

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

/* {PLAYER}.money */
EIF_TYPED_VALUE F865_6986 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(4915,Dtype(Current)));
	return r;
}


/* {PLAYER}.missed_turns */
EIF_TYPED_VALUE F865_6987 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(4916,Dtype(Current)));
	return r;
}


/* {PLAYER}.probation */
EIF_TYPED_VALUE F865_6988 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(4917,Dtype(Current)));
	return r;
}


/* {PLAYER}.game_over */
EIF_TYPED_VALUE F865_6989 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(4918,Dtype(Current)));
	return r;
}


/* {PLAYER}.human */
EIF_TYPED_VALUE F865_6990 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(4919,Dtype(Current)));
	return r;
}


/* {PLAYER}.make */
void F865_6991 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 864, Current, 0, 0, 12668);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(864, Current, 12668);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 4915, 0x10000000, 1); /* money */
	*(EIF_INTEGER_32 *)(Current + RTWA(4915, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 3000L);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 4916, 0x10000000, 1); /* missed_turns */
	*(EIF_INTEGER_32 *)(Current + RTWA(4916, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 4917, 0x04000000, 1); /* probation */
	*(EIF_BOOLEAN *)(Current + RTWA(4917, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 4918, 0x04000000, 1); /* game_over */
	*(EIF_BOOLEAN *)(Current + RTWA(4918, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 4919, 0x04000000, 1); /* human */
	*(EIF_BOOLEAN *)(Current + RTWA(4919, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

void EIF_Minit865 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
