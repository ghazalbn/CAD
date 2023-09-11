/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_0774719531;
extern char *IEEE_P_1242562249;
extern char *WORK_P_0767911121;

char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_2271993008_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );
int work_p_0767911121_sub_2836920967_1666234175(char *, int );
int work_p_0767911121_sub_3230479463_1666234175(char *, int , int );
int work_p_0767911121_sub_3788680941_1666234175(char *, int );
int work_p_0767911121_sub_60425227_1666234175(char *, int , int );


void work_p_0072272361_sub_2159094949_241306775(char *t0, char *t1, char *t2, char *t3, char *t4, char *t5)
{
    char t7[72];
    char t8[16];
    char t13[16];
    char t16[16];
    char t19[16];
    char t53[16];
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t14;
    int t15;
    char *t17;
    int t18;
    char *t20;
    int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    unsigned char t25;
    char *t26;
    char *t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t54;
    char *t55;
    char *t56;
    unsigned int t57;

LAB0:    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 7;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t11 = (0 - 7);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t13 + 0U);
    t14 = (t10 + 0U);
    *((int *)t14) = 7;
    t14 = (t10 + 4U);
    *((int *)t14) = 0;
    t14 = (t10 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 7);
    t12 = (t15 * -1);
    t12 = (t12 + 1);
    t14 = (t10 + 12U);
    *((unsigned int *)t14) = t12;
    t14 = (t16 + 0U);
    t17 = (t14 + 0U);
    *((int *)t17) = 2;
    t17 = (t14 + 4U);
    *((int *)t17) = 0;
    t17 = (t14 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 2);
    t12 = (t18 * -1);
    t12 = (t12 + 1);
    t17 = (t14 + 12U);
    *((unsigned int *)t17) = t12;
    t17 = (t19 + 0U);
    t20 = (t17 + 0U);
    *((int *)t20) = 7;
    t20 = (t17 + 4U);
    *((int *)t20) = 0;
    t20 = (t17 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 7);
    t12 = (t21 * -1);
    t12 = (t12 + 1);
    t20 = (t17 + 12U);
    *((unsigned int *)t20) = t12;
    t20 = (t7 + 4U);
    t22 = (t2 != 0);
    if (t22 == 1)
        goto LAB3;

LAB2:    t23 = (t7 + 12U);
    *((char **)t23) = t8;
    t24 = (t7 + 20U);
    t25 = (t3 != 0);
    if (t25 == 1)
        goto LAB5;

LAB4:    t26 = (t7 + 28U);
    *((char **)t26) = t13;
    t27 = (t7 + 36U);
    t28 = (t4 != 0);
    if (t28 == 1)
        goto LAB7;

LAB6:    t29 = (t7 + 44U);
    *((char **)t29) = t16;
    t30 = (t7 + 52U);
    *((char **)t30) = t5;
    t31 = (t7 + 60U);
    *((char **)t31) = t19;
    t32 = (t0 + 4176);
    t34 = xsi_mem_cmp(t32, t4, 3U);
    if (t34 == 1)
        goto LAB9;

LAB17:    t35 = (t0 + 4179);
    t37 = xsi_mem_cmp(t35, t4, 3U);
    if (t37 == 1)
        goto LAB10;

LAB18:    t38 = (t0 + 4182);
    t40 = xsi_mem_cmp(t38, t4, 3U);
    if (t40 == 1)
        goto LAB11;

LAB19:    t41 = (t0 + 4185);
    t43 = xsi_mem_cmp(t41, t4, 3U);
    if (t43 == 1)
        goto LAB12;

LAB20:    t44 = (t0 + 4188);
    t46 = xsi_mem_cmp(t44, t4, 3U);
    if (t46 == 1)
        goto LAB13;

LAB21:    t47 = (t0 + 4191);
    t49 = xsi_mem_cmp(t47, t4, 3U);
    if (t49 == 1)
        goto LAB14;

LAB22:    t50 = (t0 + 4194);
    t52 = xsi_mem_cmp(t50, t4, 3U);
    if (t52 == 1)
        goto LAB15;

LAB23:
LAB16:    t9 = (t19 + 12U);
    t12 = *((unsigned int *)t9);
    t12 = (t12 * 1U);
    t10 = xsi_get_transient_memory(t12);
    memset(t10, 0, t12);
    t14 = t10;
    memset(t14, (unsigned char)1, t12);
    t17 = (t5 + 0);
    t32 = (t19 + 12U);
    t57 = *((unsigned int *)t32);
    t57 = (t57 * 1U);
    memcpy(t17, t10, t57);

LAB8:
LAB1:    return;
LAB3:    *((char **)t20) = t2;
    goto LAB2;

LAB5:    *((char **)t24) = t3;
    goto LAB4;

LAB7:    *((char **)t27) = t4;
    goto LAB6;

LAB9:    t54 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t53, t2, t8, t3, t13);
    t55 = (t5 + 0);
    t56 = (t53 + 12U);
    t12 = *((unsigned int *)t56);
    t57 = (1U * t12);
    memcpy(t55, t54, t57);
    goto LAB8;

LAB10:    t9 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t53, t2, t8, t3, t13);
    t10 = (t5 + 0);
    t14 = (t53 + 12U);
    t12 = *((unsigned int *)t14);
    t57 = (1U * t12);
    memcpy(t10, t9, t57);
    goto LAB8;

LAB11:    t11 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t2, t8);
    t15 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t3, t13);
    t18 = (t11 * t15);
    t9 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t53, t18, 8);
    t10 = (t5 + 0);
    t14 = (t53 + 12U);
    t12 = *((unsigned int *)t14);
    t12 = (t12 * 1U);
    memcpy(t10, t9, t12);
    goto LAB8;

LAB12:    t11 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t2, t8);
    t15 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t3, t13);
    t18 = work_p_0767911121_sub_60425227_1666234175(WORK_P_0767911121, t11, t15);
    t9 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t53, t18, 8);
    t10 = (t5 + 0);
    t14 = (t53 + 12U);
    t12 = *((unsigned int *)t14);
    t12 = (t12 * 1U);
    memcpy(t10, t9, t12);
    goto LAB8;

LAB13:    t11 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t2, t8);
    t15 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t3, t13);
    t18 = work_p_0767911121_sub_3230479463_1666234175(WORK_P_0767911121, t11, t15);
    t9 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t53, t18, 8);
    t10 = (t5 + 0);
    t14 = (t53 + 12U);
    t12 = *((unsigned int *)t14);
    t12 = (t12 * 1U);
    memcpy(t10, t9, t12);
    goto LAB8;

LAB14:    t11 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t2, t8);
    t15 = work_p_0767911121_sub_2836920967_1666234175(WORK_P_0767911121, t11);
    t9 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t53, t15, 8);
    t10 = (t5 + 0);
    t14 = (t53 + 12U);
    t12 = *((unsigned int *)t14);
    t12 = (t12 * 1U);
    memcpy(t10, t9, t12);
    goto LAB8;

LAB15:    t11 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t2, t8);
    t15 = work_p_0767911121_sub_3788680941_1666234175(WORK_P_0767911121, t11);
    t9 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t53, t15, 8);
    t10 = (t5 + 0);
    t14 = (t53 + 12U);
    t12 = *((unsigned int *)t14);
    t12 = (t12 * 1U);
    memcpy(t10, t9, t12);
    goto LAB8;

LAB24:;
}


extern void work_p_0072272361_init()
{
	static char *se[] = {(void *)work_p_0072272361_sub_2159094949_241306775};
	xsi_register_didat("work_p_0072272361", "isim/SUPER_ALU_isim_beh.exe.sim/work/p_0072272361.didat");
	xsi_register_subprogram_executes(se);
}
