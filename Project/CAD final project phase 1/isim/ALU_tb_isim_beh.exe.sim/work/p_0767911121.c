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
extern char *STD_STANDARD;
static const char *ng1 = "Function divide ended without a return statement";
static const char *ng2 = "Function log ended without a return statement";



int work_p_0767911121_sub_60425227_1666234175(char *t1, int t2, int t3)
{
    char t4[368];
    char t5[16];
    char t9[8];
    char t15[8];
    char t21[8];
    int t0;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned char t28;
    int t29;
    int t30;
    int t31;
    int t32;
    int t33;
    int t34;

LAB0:    t6 = (t4 + 4U);
    t7 = ((STD_STANDARD) + 384);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    xsi_type_set_default_value(t7, t9, 0);
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 4U;
    t12 = (t4 + 124U);
    t13 = ((STD_STANDARD) + 384);
    t14 = (t12 + 88U);
    *((char **)t14) = t13;
    t16 = (t12 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, 0);
    t17 = (t12 + 80U);
    *((unsigned int *)t17) = 4U;
    t18 = (t4 + 244U);
    t19 = ((STD_STANDARD) + 384);
    t20 = (t18 + 88U);
    *((char **)t20) = t19;
    t22 = (t18 + 56U);
    *((char **)t22) = t21;
    xsi_type_set_default_value(t19, t21, 0);
    t23 = (t18 + 80U);
    *((unsigned int *)t23) = 4U;
    t24 = (t5 + 4U);
    *((int *)t24) = t2;
    t25 = (t5 + 8U);
    *((int *)t25) = t3;
    t26 = (t6 + 56U);
    t27 = *((char **)t26);
    t26 = (t27 + 0);
    *((int *)t26) = 0;
    t28 = (t2 < 0);
    if (t28 != 0)
        goto LAB2;

LAB4:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t2;

LAB3:    t28 = (t3 < 0);
    if (t28 != 0)
        goto LAB5;

LAB7:    t7 = (t18 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t3;

LAB6:    t29 = 1;
    t30 = 10;

LAB8:    if (t29 <= t30)
        goto LAB9;

LAB11:    t29 = 11;
    t30 = 20;

LAB16:    if (t29 <= t30)
        goto LAB17;

LAB19:    t29 = 21;
    t30 = 30;

LAB24:    if (t29 <= t30)
        goto LAB25;

LAB27:    t29 = 31;
    t30 = 40;

LAB32:    if (t29 <= t30)
        goto LAB33;

LAB35:    t29 = 41;
    t30 = 50;

LAB40:    if (t29 <= t30)
        goto LAB41;

LAB43:    t29 = 51;
    t30 = 60;

LAB48:    if (t29 <= t30)
        goto LAB49;

LAB51:    t29 = 61;
    t30 = 70;

LAB56:    if (t29 <= t30)
        goto LAB57;

LAB59:    t29 = 71;
    t30 = 80;

LAB64:    if (t29 <= t30)
        goto LAB65;

LAB67:    t29 = 81;
    t30 = 90;

LAB72:    if (t29 <= t30)
        goto LAB73;

LAB75:    t29 = 91;
    t30 = 100;

LAB80:    if (t29 <= t30)
        goto LAB81;

LAB83:    t29 = 101;
    t30 = 110;

LAB88:    if (t29 <= t30)
        goto LAB89;

LAB91:    t29 = 111;
    t30 = 120;

LAB96:    if (t29 <= t30)
        goto LAB97;

LAB99:    t29 = 121;
    t30 = 130;

LAB104:    if (t29 <= t30)
        goto LAB105;

LAB107:    t29 = (t2 * t3);
    t28 = (t29 < 0);
    if (t28 != 0)
        goto LAB112;

LAB114:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t29 = *((int *)t8);
    t0 = t29;

LAB1:    return t0;
LAB2:    t29 = (-(t2));
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t29;
    goto LAB3;

LAB5:    t29 = (-(t3));
    t7 = (t18 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t29;
    goto LAB6;

LAB9:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB12;

LAB14:
LAB13:
LAB10:    if (t29 == t30)
        goto LAB11;

LAB15:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB8;

LAB12:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB13;

LAB17:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB20;

LAB22:
LAB21:
LAB18:    if (t29 == t30)
        goto LAB19;

LAB23:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB16;

LAB20:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB21;

LAB25:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB28;

LAB30:
LAB29:
LAB26:    if (t29 == t30)
        goto LAB27;

LAB31:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB24;

LAB28:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB29;

LAB33:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB36;

LAB38:
LAB37:
LAB34:    if (t29 == t30)
        goto LAB35;

LAB39:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB32;

LAB36:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB37;

LAB41:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB44;

LAB46:
LAB45:
LAB42:    if (t29 == t30)
        goto LAB43;

LAB47:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB40;

LAB44:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB45;

LAB49:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB52;

LAB54:
LAB53:
LAB50:    if (t29 == t30)
        goto LAB51;

LAB55:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB48;

LAB52:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB53;

LAB57:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB60;

LAB62:
LAB61:
LAB58:    if (t29 == t30)
        goto LAB59;

LAB63:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB56;

LAB60:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB61;

LAB65:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB68;

LAB70:
LAB69:
LAB66:    if (t29 == t30)
        goto LAB67;

LAB71:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB64;

LAB68:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB69;

LAB73:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB76;

LAB78:
LAB77:
LAB74:    if (t29 == t30)
        goto LAB75;

LAB79:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB72;

LAB76:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB77;

LAB81:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB84;

LAB86:
LAB85:
LAB82:    if (t29 == t30)
        goto LAB83;

LAB87:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB80;

LAB84:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB85;

LAB89:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB92;

LAB94:
LAB93:
LAB90:    if (t29 == t30)
        goto LAB91;

LAB95:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB88;

LAB92:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB93;

LAB97:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB100;

LAB102:
LAB101:
LAB98:    if (t29 == t30)
        goto LAB99;

LAB103:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB96;

LAB100:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB101;

LAB105:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t28 = (t31 >= t32);
    if (t28 != 0)
        goto LAB108;

LAB110:
LAB109:
LAB106:    if (t29 == t30)
        goto LAB107;

LAB111:    t31 = (t29 + 1);
    t29 = t31;
    goto LAB104;

LAB108:    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t34 = (t33 + 1);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    *((int *)t7) = t34;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t31 = *((int *)t8);
    t7 = (t18 + 56U);
    t10 = *((char **)t7);
    t32 = *((int *)t10);
    t33 = (t31 - t32);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t33;
    goto LAB109;

LAB112:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t30 = *((int *)t8);
    t31 = (-(t30));
    t0 = t31;
    goto LAB1;

LAB113:    xsi_error(ng1);
    t0 = 0;
    goto LAB1;

LAB115:    goto LAB113;

LAB116:    goto LAB113;

}

int work_p_0767911121_sub_2836920967_1666234175(char *t1, int t2)
{
    char t4[8];
    int t0;
    char *t5;
    unsigned char t6;

LAB0:    t5 = (t4 + 4U);
    *((int *)t5) = t2;
    t6 = (t2 < 2);
    if (t6 != 0)
        goto LAB2;

LAB4:    t6 = (t2 < 4);
    if (t6 != 0)
        goto LAB6;

LAB7:    t6 = (t2 < 8);
    if (t6 != 0)
        goto LAB9;

LAB10:    t6 = (t2 < 16);
    if (t6 != 0)
        goto LAB12;

LAB13:    t6 = (t2 < 32);
    if (t6 != 0)
        goto LAB15;

LAB16:    t6 = (t2 < 64);
    if (t6 != 0)
        goto LAB18;

LAB19:    t6 = (t2 < 128);
    if (t6 != 0)
        goto LAB21;

LAB22:    t6 = (t2 < 256);
    if (t6 != 0)
        goto LAB24;

LAB25:    t0 = 8;

LAB1:    return t0;
LAB2:    t0 = 0;
    goto LAB1;

LAB3:    xsi_error(ng2);
    t0 = 0;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t0 = 1;
    goto LAB1;

LAB8:    goto LAB3;

LAB9:    t0 = 2;
    goto LAB1;

LAB11:    goto LAB3;

LAB12:    t0 = 3;
    goto LAB1;

LAB14:    goto LAB3;

LAB15:    t0 = 4;
    goto LAB1;

LAB17:    goto LAB3;

LAB18:    t0 = 5;
    goto LAB1;

LAB20:    goto LAB3;

LAB21:    t0 = 6;
    goto LAB1;

LAB23:    goto LAB3;

LAB24:    t0 = 7;
    goto LAB1;

LAB26:    goto LAB3;

LAB27:    goto LAB3;

}

int work_p_0767911121_sub_3788680941_1666234175(char *t1, int t2)
{
    char t3[128];
    char t4[8];
    char t8[8];
    int t0;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    int t17;
    int t18;
    unsigned char t19;
    int t20;
    int t21;

LAB0:    t5 = (t3 + 4U);
    t6 = ((STD_STANDARD) + 384);
    t7 = (t5 + 88U);
    *((char **)t7) = t6;
    t9 = (t5 + 56U);
    *((char **)t9) = t8;
    xsi_type_set_default_value(t6, t8, 0);
    t10 = (t5 + 80U);
    *((unsigned int *)t10) = 4U;
    t11 = (t4 + 4U);
    *((int *)t11) = t2;
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    *((int *)t12) = 0;
    t14 = 1;
    t15 = 16;

LAB2:    if (t14 <= t15)
        goto LAB3;

LAB5:    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t14 = *((int *)t7);
    t15 = (t14 - 1);
    t0 = t15;

LAB1:    return t0;
LAB3:    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t16 = *((int *)t7);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t17 = *((int *)t9);
    t18 = (t16 * t17);
    t19 = (t18 <= t2);
    if (t19 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    if (t14 == t15)
        goto LAB5;

LAB9:    t16 = (t14 + 1);
    t14 = t16;
    goto LAB2;

LAB6:    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    t20 = *((int *)t10);
    t21 = (t20 + 1);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((int *)t6) = t21;
    goto LAB7;

LAB10:;
}

int work_p_0767911121_sub_3230479463_1666234175(char *t1, int t2, int t3)
{
    char t4[128];
    char t5[16];
    char t9[8];
    int t0;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned char t18;
    int t19;
    int t20;

LAB0:    t6 = (t4 + 4U);
    t7 = ((STD_STANDARD) + 384);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    xsi_type_set_default_value(t7, t9, 0);
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 4U;
    t12 = (t5 + 4U);
    *((int *)t12) = t2;
    t13 = (t5 + 8U);
    *((int *)t13) = t3;
    t14 = (t6 + 56U);
    t15 = *((char **)t14);
    t14 = (t15 + 0);
    *((int *)t14) = 1;
    t16 = 1;
    t17 = 16;

LAB2:    if (t16 <= t17)
        goto LAB3;

LAB5:    t16 = 17;
    t17 = 32;

LAB10:    if (t16 <= t17)
        goto LAB11;

LAB13:    t16 = 33;
    t17 = 48;

LAB18:    if (t16 <= t17)
        goto LAB19;

LAB21:    t16 = 49;
    t17 = 64;

LAB26:    if (t16 <= t17)
        goto LAB27;

LAB29:    t16 = 65;
    t17 = 80;

LAB34:    if (t16 <= t17)
        goto LAB35;

LAB37:    t16 = 81;
    t17 = 96;

LAB42:    if (t16 <= t17)
        goto LAB43;

LAB45:    t16 = 97;
    t17 = 112;

LAB50:    if (t16 <= t17)
        goto LAB51;

LAB53:    t16 = 113;
    t17 = 128;

LAB58:    if (t16 <= t17)
        goto LAB59;

LAB61:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t16 = *((int *)t8);
    t0 = t16;

LAB1:    return t0;
LAB3:    t18 = (t16 <= t3);
    if (t18 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    if (t16 == t17)
        goto LAB5;

LAB9:    t19 = (t16 + 1);
    t16 = t19;
    goto LAB2;

LAB6:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t20 = (t19 * t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t20;
    goto LAB7;

LAB11:    t18 = (t16 <= t3);
    if (t18 != 0)
        goto LAB14;

LAB16:
LAB15:
LAB12:    if (t16 == t17)
        goto LAB13;

LAB17:    t19 = (t16 + 1);
    t16 = t19;
    goto LAB10;

LAB14:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t20 = (t19 * t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t20;
    goto LAB15;

LAB19:    t18 = (t16 <= t3);
    if (t18 != 0)
        goto LAB22;

LAB24:
LAB23:
LAB20:    if (t16 == t17)
        goto LAB21;

LAB25:    t19 = (t16 + 1);
    t16 = t19;
    goto LAB18;

LAB22:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t20 = (t19 * t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t20;
    goto LAB23;

LAB27:    t18 = (t16 <= t3);
    if (t18 != 0)
        goto LAB30;

LAB32:
LAB31:
LAB28:    if (t16 == t17)
        goto LAB29;

LAB33:    t19 = (t16 + 1);
    t16 = t19;
    goto LAB26;

LAB30:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t20 = (t19 * t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t20;
    goto LAB31;

LAB35:    t18 = (t16 <= t3);
    if (t18 != 0)
        goto LAB38;

LAB40:
LAB39:
LAB36:    if (t16 == t17)
        goto LAB37;

LAB41:    t19 = (t16 + 1);
    t16 = t19;
    goto LAB34;

LAB38:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t20 = (t19 * t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t20;
    goto LAB39;

LAB43:    t18 = (t16 <= t3);
    if (t18 != 0)
        goto LAB46;

LAB48:
LAB47:
LAB44:    if (t16 == t17)
        goto LAB45;

LAB49:    t19 = (t16 + 1);
    t16 = t19;
    goto LAB42;

LAB46:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t20 = (t19 * t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t20;
    goto LAB47;

LAB51:    t18 = (t16 <= t3);
    if (t18 != 0)
        goto LAB54;

LAB56:
LAB55:
LAB52:    if (t16 == t17)
        goto LAB53;

LAB57:    t19 = (t16 + 1);
    t16 = t19;
    goto LAB50;

LAB54:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t20 = (t19 * t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t20;
    goto LAB55;

LAB59:    t18 = (t16 <= t3);
    if (t18 != 0)
        goto LAB62;

LAB64:
LAB63:
LAB60:    if (t16 == t17)
        goto LAB61;

LAB65:    t19 = (t16 + 1);
    t16 = t19;
    goto LAB58;

LAB62:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t20 = (t19 * t2);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t20;
    goto LAB63;

LAB66:;
}


extern void work_p_0767911121_init()
{
	static char *se[] = {(void *)work_p_0767911121_sub_60425227_1666234175,(void *)work_p_0767911121_sub_2836920967_1666234175,(void *)work_p_0767911121_sub_3788680941_1666234175,(void *)work_p_0767911121_sub_3230479463_1666234175};
	xsi_register_didat("work_p_0767911121", "isim/ALU_tb_isim_beh.exe.sim/work/p_0767911121.didat");
	xsi_register_subprogram_executes(se);
}
