/*
 * Class BOX [NATURAL_32]
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static const EIF_TYPE_INDEX egt_0_709 [] = {0xFF01,194,0xFFFF};
static const EIF_TYPE_INDEX egt_1_709 [] = {0xFF01,212,708,157,0xFFFF};
static const EIF_TYPE_INDEX egt_2_709 [] = {0xFF01,708,157,0xFFFF};
static const EIF_TYPE_INDEX egt_3_709 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_4_709 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_5_709 [] = {0xFF01,708,157,0xFFFF};
static const EIF_TYPE_INDEX egt_6_709 [] = {0xFF01,708,157,0xFFFF};
static const EIF_TYPE_INDEX egt_7_709 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_8_709 [] = {0xFF01,10,0xFFFF};
static const EIF_TYPE_INDEX egt_9_709 [] = {0xFF01,194,0xFFFF};
static const EIF_TYPE_INDEX egt_10_709 [] = {0xFF01,194,0xFFFF};
static const EIF_TYPE_INDEX egt_11_709 [] = {0xFF01,11,0xFFFF};
static const EIF_TYPE_INDEX egt_12_709 [] = {708,157,0xFFFF};
static const EIF_TYPE_INDEX egt_13_709 [] = {0xFF01,708,157,0xFFFF};
static const EIF_TYPE_INDEX egt_14_709 [] = {0xFF01,695,0xFFF8,1,0xFFFF};
static const EIF_TYPE_INDEX egt_15_709 [] = {0xFFF8,1,0xFFFF};


static const struct desc_info desc_709[] = {
	{EIF_GENERIC(NULL), 0xFFFFFFFF, 0xFFFFFFFF},
	{EIF_GENERIC(egt_0_709), 0, 0xFFFFFFFF},
	{EIF_GENERIC(egt_1_709), 1, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 2, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 3, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 4, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 5, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 6, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 7, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 8, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 9, 0xFFFFFFFF},
	{EIF_GENERIC(egt_2_709), 10, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 11, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 12, 0xFFFFFFFF},
	{EIF_GENERIC(egt_3_709), 13, 0xFFFFFFFF},
	{EIF_GENERIC(egt_4_709), 14, 0xFFFFFFFF},
	{EIF_GENERIC(egt_5_709), 15, 0xFFFFFFFF},
	{EIF_GENERIC(egt_6_709), 16, 0xFFFFFFFF},
	{EIF_GENERIC(egt_7_709), 17, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 19, 0xFFFFFFFF},
	{EIF_GENERIC(egt_8_709), 20, 0xFFFFFFFF},
	{EIF_GENERIC(egt_9_709), 21, 0xFFFFFFFF},
	{EIF_GENERIC(egt_10_709), 22, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 23, 0xFFFFFFFF},
	{EIF_GENERIC(egt_11_709), 24, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 25, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 26, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 27, 0xFFFFFFFF},
	{EIF_GENERIC(egt_12_709), 28, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0171 /*184*/), 29, 0xFFFFFFFF},
	{EIF_GENERIC(egt_13_709), 30, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 1560, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 1561, 0},
	{EIF_NON_GENERIC(0x0165 /*178*/), 1562, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 1563, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 1564, 0xFFFFFFFF},
	{EIF_GENERIC(egt_14_709), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(egt_15_709), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0165 /*178*/), 0x00, 0xFFFFFFFF},
};
void Init709(void)
{
	IDSC(desc_709, 0, 708);
	IDSC(desc_709 + 1, 2, 708);
	IDSC(desc_709 + 32, 193, 708);
	IDSC(desc_709 + 41, 223, 708);
}


#ifdef __cplusplus
}
#endif