/*
 * Code for class RT_DBG_EXECUTION_PARAMETERS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F9_241(EIF_REFERENCE);
extern EIF_TYPED_VALUE F9_242(EIF_REFERENCE);
extern EIF_TYPED_VALUE F9_243(EIF_REFERENCE);
extern EIF_TYPED_VALUE F9_244(EIF_REFERENCE);
extern EIF_TYPED_VALUE F9_245(EIF_REFERENCE);
extern void F9_246(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F9_247(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F9_248(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F9_249(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit9(void);

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

/* {RT_DBG_EXECUTION_PARAMETERS}.make */
void F9_241 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 8, Current, 0, 0, 408);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(8, Current, 408);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 248, 0x10000000, 1); /* maximum_record_count */
	*(EIF_INTEGER_32 *)(Current + RTWA(248, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1000000L);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 249, 0x04000000, 1); /* flatten_when_closing */
	*(EIF_BOOLEAN *)(Current + RTWA(249, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 250, 0x04000000, 1); /* keep_calls_records */
	*(EIF_BOOLEAN *)(Current + RTWA(250, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 251, 0x04000000, 1); /* recording_values */
	*(EIF_BOOLEAN *)(Current + RTWA(251, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {RT_DBG_EXECUTION_PARAMETERS}.maximum_record_count */
EIF_TYPED_VALUE F9_242 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(248,Dtype(Current)));
	return r;
}


/* {RT_DBG_EXECUTION_PARAMETERS}.flatten_when_closing */
EIF_TYPED_VALUE F9_243 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(249,Dtype(Current)));
	return r;
}


/* {RT_DBG_EXECUTION_PARAMETERS}.keep_calls_records */
EIF_TYPED_VALUE F9_244 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(250,Dtype(Current)));
	return r;
}


/* {RT_DBG_EXECUTION_PARAMETERS}.recording_values */
EIF_TYPED_VALUE F9_245 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(251,Dtype(Current)));
	return r;
}


/* {RT_DBG_EXECUTION_PARAMETERS}.set_maximum_record_count */
void F9_246 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_maximum_record_count";
	RTEX;
#define arg1 arg1x.it_i4
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
	
	RTEAA(l_feature_name, 8, Current, 0, 1, 413);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(8, Current, 413);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 248, 0x10000000, 1); /* maximum_record_count */
	*(EIF_INTEGER_32 *)(Current + RTWA(248, Dtype(Current))) = (EIF_INTEGER_32) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {RT_DBG_EXECUTION_PARAMETERS}.set_flatten_when_closing */
void F9_247 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_flatten_when_closing";
	RTEX;
#define arg1 arg1x.it_b
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 8, Current, 0, 1, 414);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(8, Current, 414);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 249, 0x04000000, 1); /* flatten_when_closing */
	*(EIF_BOOLEAN *)(Current + RTWA(249, Dtype(Current))) = (EIF_BOOLEAN) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {RT_DBG_EXECUTION_PARAMETERS}.set_keep_calls_records */
void F9_248 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_keep_calls_records";
	RTEX;
#define arg1 arg1x.it_b
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 8, Current, 0, 1, 406);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(8, Current, 406);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 250, 0x04000000, 1); /* keep_calls_records */
	*(EIF_BOOLEAN *)(Current + RTWA(250, Dtype(Current))) = (EIF_BOOLEAN) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {RT_DBG_EXECUTION_PARAMETERS}.set_recording_values */
void F9_249 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_recording_values";
	RTEX;
#define arg1 arg1x.it_b
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 8, Current, 0, 1, 407);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(8, Current, 407);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 251, 0x04000000, 1); /* recording_values */
	*(EIF_BOOLEAN *)(Current + RTWA(251, Dtype(Current))) = (EIF_BOOLEAN) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

void EIF_Minit9 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
