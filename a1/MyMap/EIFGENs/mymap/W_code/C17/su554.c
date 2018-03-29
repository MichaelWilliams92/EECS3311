/*
 * Code for class SUBSET_STRATEGY_HASHABLE [INTEGER_32]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F554_790(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F554_791(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit554(void);

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

/* {SUBSET_STRATEGY_HASHABLE}.disjoint */
EIF_TYPED_VALUE F554_790 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "disjoint";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc1);
	RTLR(3,Current);
	RTLR(4,tr1);
	RTLR(5,loc3);
	RTLR(6,loc4);
	RTLIU(7);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 553, Current, 4, 2, 957);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(553, Current, 957);
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,549,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, dtype, Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		RTCC(arg1, 553, l_feature_name, 1, typres0, 0x01);
	}
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,549,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, dtype, Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		RTCC(arg2, 553, l_feature_name, 2, typres0, 0x01);
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
	RTDBGAL(Current, 1, 0xF80001CC, 0, 0); /* loc1 */
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,460,0,0,181,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, dtype, Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		tr1 = RTLN(typres0.id);
	}
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1304, "count", arg1))(arg1)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1304, "count", arg2))(arg2)).it_i4);
	ui4_1 = (EIF_INTEGER_32) (ti4_1 + ti4_2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(2272, Dtype(tr1)))(tr1, ui4_1x);
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
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_i4);
			tr1 = RTLN(eif_new_type(181, 0x00).id);
			*(EIF_INTEGER_32 *)tr1 = ti4_1;
			loc3 = tr1;
			if ((EIF_TRUE)) {
				RTHOOK(12);
				RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2468, "hash_code", loc3))(loc3)).it_i4);
				loc2 = (EIF_INTEGER_32) ti4_1;
			} else {
				if (RTAL & CK_CHECK) {
					RTHOOK(13);
					RTCT("hashable_item", EX_CHECK);
						RTCF;
				}
			}
			RTHOOK(14);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			ui4_1 = loc2;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2276, "has", loc1))(loc1, ui4_1x)).it_b);
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !tb2;
			RTHOOK(15);
			if (Result) {
				RTHOOK(16);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_i4);
				ui4_1 = ti4_1;
				ui4_2 = loc2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1279, "put", loc1))(loc1, ui4_1x, ui4_2x);
			} else {
				RTHOOK(17);
				ui4_1 = loc2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2298, "search", loc1))(loc1, ui4_1x);
				if (RTAL & CK_CHECK) {
					RTHOOK(18);
					RTCT("item_found", EX_CHECK);
					tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2290, "found", loc1))(loc1)).it_b);
					if (tb2) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(19);
				tb2 = *(EIF_BOOLEAN *)(arg1 + RTVA(1230, "object_comparison", arg1));
				if (tb2) {
					RTHOOK(20);
					RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2275, "found_item", loc1))(loc1)).it_i4);
					Result = (EIF_BOOLEAN) (ti4_1 != ti4_2);
				} else {
					RTHOOK(21);
					RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2275, "found_item", loc1))(loc1)).it_i4);
					Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 != ti4_2);
				}
			}
			RTHOOK(22);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1317, "forth", arg1))(arg1);
		}
		RTHOOK(23);
		tb2 = '\0';
		if (Result) {
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1314, "after", arg2))(arg2)).it_b);
			tb2 = (EIF_BOOLEAN) !tb3;
		}
		if (tb2) {
			RTHOOK(24);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_i4);
			tr1 = RTLN(eif_new_type(181, 0x00).id);
			*(EIF_INTEGER_32 *)tr1 = ti4_1;
			loc4 = tr1;
			if ((EIF_TRUE)) {
				RTHOOK(25);
				RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2468, "hash_code", loc4))(loc4)).it_i4);
				loc2 = (EIF_INTEGER_32) ti4_1;
			} else {
				if (RTAL & CK_CHECK) {
					RTHOOK(26);
					RTCT("hashable_item", EX_CHECK);
						RTCF;
				}
			}
			RTHOOK(27);
			ui4_1 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2298, "search", loc1))(loc1, ui4_1x);
			RTHOOK(28);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2290, "found", loc1))(loc1)).it_b);
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !tb2;
			RTHOOK(29);
			if (Result) {
				RTHOOK(30);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_i4);
				ui4_1 = ti4_1;
				ui4_2 = loc2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1279, "put", loc1))(loc1, ui4_1x, ui4_2x);
			} else {
				RTHOOK(31);
				tb2 = *(EIF_BOOLEAN *)(arg1 + RTVA(1230, "object_comparison", arg1));
				if (tb2) {
					RTHOOK(32);
					RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2275, "found_item", loc1))(loc1)).it_i4);
					Result = (EIF_BOOLEAN) (ti4_1 != ti4_2);
				} else {
					RTHOOK(33);
					RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2275, "found_item", loc1))(loc1)).it_i4);
					Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 != ti4_2);
				}
			}
			RTHOOK(34);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1317, "forth", arg2))(arg2);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(35);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ui4_1
#undef ui4_2
#undef arg2
#undef arg1
}

/* {SUBSET_STRATEGY_HASHABLE}.symdif */
void F554_791 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "symdif";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc3 = (EIF_BOOLEAN) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc1);
	RTLR(3,Current);
	RTLR(4,tr1);
	RTLR(5,loc5);
	RTLR(6,loc6);
	RTLIU(7);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_BOOL, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	
	RTEAA(l_feature_name, 553, Current, 6, 2, 958);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(553, Current, 958);
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,549,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, dtype, Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		RTCC(arg1, 553, l_feature_name, 1, typres0, 0x01);
	}
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,549,0,0,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, dtype, Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		RTCC(arg2, 553, l_feature_name, 2, typres0, 0x01);
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
	RTDBGAL(Current, 1, 0xF80001CC, 0, 0); /* loc1 */
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,460,0,0,181,0xFFFF};
		EIF_TYPE typres0;
		{
			EIF_TYPE l_type;
			l_type = RTWCT(765, dtype, Dftype(Current));
			typarr0[2] = l_type.annotations | 0xFF00;
			typarr0[3] = l_type.id;
		}
		
		typres0 = eif_compound_id(Dftype(Current), typarr0);
		tr1 = RTLN(typres0.id);
	}
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1304, "count", arg1))(arg1)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1304, "count", arg2))(arg2)).it_i4);
	ui4_1 = (EIF_INTEGER_32) (ti4_1 + ti4_2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(2272, Dtype(tr1)))(tr1, ui4_1x);
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
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_i4);
		tr1 = RTLN(eif_new_type(181, 0x00).id);
		*(EIF_INTEGER_32 *)tr1 = ti4_1;
		loc5 = tr1;
		if ((EIF_TRUE)) {
			RTHOOK(9);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg1))(arg1)).it_i4);
			ui4_1 = ti4_1;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2468, "hash_code", loc5))(loc5)).it_i4);
			ui4_2 = ti4_2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1279, "put", loc1))(loc1, ui4_1x, ui4_2x);
		} else {
			if (RTAL & CK_CHECK) {
				RTHOOK(10);
				RTCT("hashable_item", EX_CHECK);
					RTCF;
			}
		}
		RTHOOK(11);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1317, "forth", arg1))(arg1);
	}
	RTHOOK(12);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1316, "start", arg2))(arg2);
	for (;;) {
		RTHOOK(13);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1314, "after", arg2))(arg2)).it_b);
		if (tb2) break;
		RTHOOK(14);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_i4);
		tr1 = RTLN(eif_new_type(181, 0x00).id);
		*(EIF_INTEGER_32 *)tr1 = ti4_1;
		loc6 = tr1;
		if ((EIF_TRUE)) {
			RTHOOK(15);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2468, "hash_code", loc6))(loc6)).it_i4);
			loc2 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(16);
			ui4_1 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2298, "search", loc1))(loc1, ui4_1x);
			RTHOOK(17);
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2290, "found", loc1))(loc1)).it_b);
			if (tb3) {
				RTHOOK(18);
				tb3 = *(EIF_BOOLEAN *)(arg1 + RTVA(1230, "object_comparison", arg1));
				if (tb3) {
					RTHOOK(19);
					RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2275, "found_item", loc1))(loc1)).it_i4);
					loc3 = (EIF_BOOLEAN) (ti4_1 == ti4_2);
				} else {
					RTHOOK(20);
					RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2275, "found_item", loc1))(loc1)).it_i4);
					loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
				}
				RTHOOK(21);
				if (loc3) {
					RTHOOK(22);
					ui4_1 = loc2;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2306, "remove", loc1))(loc1, ui4_1x);
				}
			} else {
				RTHOOK(23);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1313, "item", arg2))(arg2)).it_i4);
				ui4_1 = ti4_1;
				ui4_2 = loc2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1279, "put", loc1))(loc1, ui4_1x, ui4_2x);
			}
		} else {
			if (RTAL & CK_CHECK) {
				RTHOOK(24);
				RTCT("hashable_item", EX_CHECK);
					RTCF;
			}
		}
		RTHOOK(25);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1317, "forth", arg2))(arg2);
	}
	RTHOOK(26);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1274, "wipe_out", arg1))(arg1);
	RTHOOK(27);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(2295, "start", loc1))(loc1);
	for (;;) {
		RTHOOK(28);
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2292, "after", loc1))(loc1)).it_b);
		if (tb3) break;
		RTHOOK(29);
		RTDBGAL(Current, 4, 0x10000000, 0, 0); /* loc4 */
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2279, "item_for_iteration", loc1))(loc1)).it_i4);
		loc4 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(30);
		if (EIF_TRUE) {
			RTHOOK(31);
			ui4_1 = loc4;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1270, "extend", arg1))(arg1, ui4_1x);
		}
		RTHOOK(32);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(2296, "forth", loc1))(loc1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(33);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef ui4_1
#undef ui4_2
#undef arg2
#undef arg1
}

void EIF_Minit554 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
