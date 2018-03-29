/*
 * Class TIME_MEASUREMENT
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static const EIF_TYPE_INDEX egt_0_873 [] = {0xFF01,220,0xFFFF};
static const EIF_TYPE_INDEX egt_1_873 [] = {0xFF01,237,872,0xFFFF};
static const EIF_TYPE_INDEX egt_2_873 [] = {0xFF01,872,0xFFFF};
static const EIF_TYPE_INDEX egt_3_873 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_4_873 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_5_873 [] = {0xFF01,872,0xFFFF};
static const EIF_TYPE_INDEX egt_6_873 [] = {0xFF01,872,0xFFFF};
static const EIF_TYPE_INDEX egt_7_873 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_8_873 [] = {0xFF01,14,0xFFFF};
static const EIF_TYPE_INDEX egt_9_873 [] = {0xFF01,220,0xFFFF};
static const EIF_TYPE_INDEX egt_10_873 [] = {0xFF01,220,0xFFFF};
static const EIF_TYPE_INDEX egt_11_873 [] = {0xFF01,15,0xFFFF};
static const EIF_TYPE_INDEX egt_12_873 [] = {0xFF01,872,0xFFFF};
static const EIF_TYPE_INDEX egt_13_873 [] = {0xFF01,868,0xFFFF};
static const EIF_TYPE_INDEX egt_14_873 [] = {0xFF01,220,0xFFFF};
static const EIF_TYPE_INDEX egt_15_873 [] = {0xFF01,220,0xFFFF};


static const struct desc_info desc_873[] = {
	{EIF_GENERIC(NULL), 0xFFFFFFFF, 0xFFFFFFFF},
	{EIF_GENERIC(egt_0_873), 0, 0xFFFFFFFF},
	{EIF_GENERIC(egt_1_873), 1, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x017F /*191*/), 2, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x017F /*191*/), 3, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x017F /*191*/), 4, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x017F /*191*/), 5, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x017F /*191*/), 6, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x017F /*191*/), 7, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x017F /*191*/), 8, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x017F /*191*/), 9, 0xFFFFFFFF},
	{EIF_GENERIC(egt_2_873), 10, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 11, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 12, 0xFFFFFFFF},
	{EIF_GENERIC(egt_3_873), 13, 0xFFFFFFFF},
	{EIF_GENERIC(egt_4_873), 14, 0xFFFFFFFF},
	{EIF_GENERIC(egt_5_873), 15, 0xFFFFFFFF},
	{EIF_GENERIC(egt_6_873), 16, 0xFFFFFFFF},
	{EIF_GENERIC(egt_7_873), 17, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 19, 0xFFFFFFFF},
	{EIF_GENERIC(egt_8_873), 20, 0xFFFFFFFF},
	{EIF_GENERIC(egt_9_873), 21, 0xFFFFFFFF},
	{EIF_GENERIC(egt_10_873), 22, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 23, 0xFFFFFFFF},
	{EIF_GENERIC(egt_11_873), 24, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 25, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 26, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 27, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x06D1 /*872*/), 28, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01AF /*215*/), 29, 0xFFFFFFFF},
	{EIF_GENERIC(egt_12_873), 30, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 12716, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 12717, 0xFFFFFFFF},
	{EIF_GENERIC(egt_13_873), 12718, 0xFFFFFFFF},
	{EIF_GENERIC(egt_14_873), 12719, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 12720, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 12721, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 12722, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 12723, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 12724, 0xFFFFFFFF},
	{EIF_GENERIC(egt_15_873), 12725, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0185 /*194*/), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
};
void Init873(void)
{
	IDSC(desc_873, 0, 872);
	IDSC(desc_873 + 1, 1, 872);
	IDSC(desc_873 + 32, 367, 872);
	IDSC(desc_873 + 36, 364, 872);
	IDSC(desc_873 + 42, 362, 872);
}


#ifdef __cplusplus
}
#endif
