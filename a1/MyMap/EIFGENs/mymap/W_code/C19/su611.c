/*
 * Code for class SUBSET_STRATEGY_GENERIC [CHARACTER_8]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F611_788(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F611_789(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit611(void);

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

/* {SUBSET_STRATEGY_GENERIC}.disjoint */
EIF_TYPED_VALUE F611_788 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "disjoint";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_CHARACTER_8 tc1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc1);
	RTLR(3,Current);
	RTLR(4,tr1);
	RTLIU(5);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 610, Current, 1, 2, 953);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(610, Current, 953);
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,602,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, Dtype(Current), Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		RTCC(arg1, 610, l_feature_name, 1, typres0, 0x01);
	}
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,602,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, Dtype(Current), Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		RTCC(arg2, 610, l_feature_name, 2, typres0, 0x01);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("sets_exist", EX_PRE);
		RTTE((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 != NULL) && (EIF_BOOLEAN)(arg2 != NULL)), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("same_rule", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1230, "object_comparison", arg1));
		tb2 = *(EIF_BOOLEAN *)(arg2 + RTVA(1230, "object_comparison", arg2));
		RTTE((EIF_BOOLEAN)(tb1 == tb2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF8000253, 0, 0); /* loc1 */
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,595,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, Dtype(Current), Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		tr1 = RTLN(typres0.id);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(2218, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1230, "object_comparison", arg1));
	if (tb1) {
		RTHOOK(5);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1232, "compare_objects", loc1))(loc1);
	}
	RTHOOK(6);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(7);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1316, "start", arg1))(arg1);
	RTHOOK(8);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1316, "start", arg2))(arg2);
	for (;;) {
		RTHOOK(9);
		tb1 = '\01';
		if (!(EIF_BOOLEAN) !Result) {
			tb2 = '\0';
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1314, "after", arg1))(arg1)).it_b);
			if (tb3) {
				tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1314, "after", arg2))(arg2)).it_b);
				tb2 = tb3;
			}
			tb1 = tb2;
		}
		if (tb1) break;
		RTHOOK(10);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1314, "after", arg1))(arg1)).it_b);
		if ((EIF_BOOLEAN) !tb2) {
			RTHOOK(11);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_c1);
			uc1 = tc1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1227, "has", loc1))(loc1, uc1x)).it_b);
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !tb2;
			RTHOOK(12);
			if (Result) {
				RTHOOK(13);
				tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_c1);
				uc1 = tc1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1269, "put", loc1))(loc1, uc1x);
			}
		}
		RTHOOK(14);
		tb2 = '\0';
		if (Result) {
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1314, "after", arg2))(arg2)).it_b);
			tb2 = (EIF_BOOLEAN) !tb3;
		}
		if (tb2) {
			RTHOOK(15);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_c1);
			uc1 = tc1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1227, "has", loc1))(loc1, uc1x)).it_b);
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !tb2;
			RTHOOK(16);
			if (Result) {
				RTHOOK(17);
				tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_c1);
				uc1 = tc1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1269, "put", loc1))(loc1, uc1x);
			}
		}
		RTHOOK(18);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1317, "forth", arg1))(arg1);
		RTHOOK(19);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1317, "forth", arg2))(arg2);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef uc1
#undef arg2
#undef arg1
}

/* {SUBSET_STRATEGY_GENERIC}.symdif */
void F611_789 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "symdif";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_CHARACTER_8 tc1;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc1);
	RTLR(3,Current);
	RTLR(4,tr1);
	RTLIU(5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 610, Current, 1, 2, 954);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(610, Current, 954);
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,602,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, Dtype(Current), Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		RTCC(arg1, 610, l_feature_name, 1, typres0, 0x01);
	}
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,602,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, Dtype(Current), Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		RTCC(arg2, 610, l_feature_name, 2, typres0, 0x01);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("sets_exist", EX_PRE);
		RTTE((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 != NULL) && (EIF_BOOLEAN)(arg2 != NULL)), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("same_rule", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1230, "object_comparison", arg1));
		tb2 = *(EIF_BOOLEAN *)(arg2 + RTVA(1230, "object_comparison", arg2));
		RTTE((EIF_BOOLEAN)(tb1 == tb2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF8000256, 0, 0); /* loc1 */
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,598,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, Dtype(Current), Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		tr1 = RTLN(typres0.id);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(2218, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1230, "object_comparison", arg1));
	if (tb1) {
		RTHOOK(5);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1232, "compare_objects", loc1))(loc1);
	}
	RTHOOK(6);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1316, "start", arg1))(arg1);
	for (;;) {
		RTHOOK(7);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1314, "after", arg1))(arg1)).it_b);
		if (tb1) break;
		RTHOOK(8);
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_c1);
		uc1 = tc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1270, "extend", loc1))(loc1, uc1x);
		RTHOOK(9);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1317, "forth", arg1))(arg1);
	}
	RTHOOK(10);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1316, "start", arg2))(arg2);
	for (;;) {
		RTHOOK(11);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1314, "after", arg2))(arg2)).it_b);
		if (tb2) break;
		RTHOOK(12);
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_c1);
		uc1 = tc1;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1227, "has", loc1))(loc1, uc1x)).it_b);
		if (tb3) {
			RTHOOK(13);
			tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_c1);
			uc1 = tc1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1272, "prune", loc1))(loc1, uc1x);
		} else {
			RTHOOK(14);
			tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_c1);
			uc1 = tc1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1270, "extend", loc1))(loc1, uc1x);
		}
		RTHOOK(15);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1317, "forth", arg2))(arg2);
	}
	RTHOOK(16);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1274, "wipe_out", arg1))(arg1);
	RTHOOK(17);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1238, "start", loc1))(loc1);
	for (;;) {
		RTHOOK(18);
		tb3 = *(EIF_BOOLEAN *)(loc1 + RTVA(2228, "after", loc1));
		if (tb3) break;
		RTHOOK(19);
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1282, "item", loc1))(loc1)).it_c1);
		uc1 = tc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1270, "extend", arg1))(arg1, uc1x);
		RTHOOK(20);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1251, "forth", loc1))(loc1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(21);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef uc1
#undef arg2
#undef arg1
}

void EIF_Minit611 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif