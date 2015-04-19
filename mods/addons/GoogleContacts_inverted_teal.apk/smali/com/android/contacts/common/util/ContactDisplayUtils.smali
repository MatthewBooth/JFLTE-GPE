.class public Lcom/android/contacts/common/util/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/util/ContactDisplayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0    # Ljava/lang/Integer;

    const v0, 0x7f0b003f

    if-nez p0, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f0b0038

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0039

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b003a

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b003b

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0b003c

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0b003d

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0b003e

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0b0040

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0b0041

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0b0042

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0b0043

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0b0044

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0b0045

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0b0046

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0b0047

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0b0048

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0b0049

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0b004a

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0b004b

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0b004c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static getSmsLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0    # Ljava/lang/Integer;

    const v0, 0x7f0b0054

    if-nez p0, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f0b004d

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b004e

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b004f

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b0050

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0b0051

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0b0052

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0b0053

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0b0055

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0b0056

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0b0057

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0b0058

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0b0059

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0b005a

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0b005b

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0b005c

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0b005d

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0b005e

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0b005f

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0b0060

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0b0061

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 2
    .param p0    # Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
