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

.method public static getLabelForCallOrSms(Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0    # Ljava/lang/Integer;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Landroid/content/Context;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getSmsLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPhoneLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un-recognized interaction type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Defaulting to ContactDisplayUtils.INTERACTION_CALL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getPhoneLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0    # Ljava/lang/Integer;

    const v0, 0x7f080063

    if-nez p0, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f08005c

    goto :goto_0

    :pswitch_1
    const v0, 0x7f08005d

    goto :goto_0

    :pswitch_2
    const v0, 0x7f08005e

    goto :goto_0

    :pswitch_3
    const v0, 0x7f08005f

    goto :goto_0

    :pswitch_4
    const v0, 0x7f080060

    goto :goto_0

    :pswitch_5
    const v0, 0x7f080061

    goto :goto_0

    :pswitch_6
    const v0, 0x7f080062

    goto :goto_0

    :pswitch_7
    const v0, 0x7f080064

    goto :goto_0

    :pswitch_8
    const v0, 0x7f080065

    goto :goto_0

    :pswitch_9
    const v0, 0x7f080066

    goto :goto_0

    :pswitch_a
    const v0, 0x7f080067

    goto :goto_0

    :pswitch_b
    const v0, 0x7f080068

    goto :goto_0

    :pswitch_c
    const v0, 0x7f080069

    goto :goto_0

    :pswitch_d
    const v0, 0x7f08006a

    goto :goto_0

    :pswitch_e
    const v0, 0x7f08006b

    goto :goto_0

    :pswitch_f
    const v0, 0x7f08006c

    goto :goto_0

    :pswitch_10
    const v0, 0x7f08006d

    goto :goto_0

    :pswitch_11
    const v0, 0x7f08006e

    goto :goto_0

    :pswitch_12
    const v0, 0x7f08006f

    goto :goto_0

    :pswitch_13
    const v0, 0x7f080070

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

    const v0, 0x7f080078

    if-nez p0, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f080071

    goto :goto_0

    :pswitch_1
    const v0, 0x7f080072

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080073

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080074

    goto :goto_0

    :pswitch_4
    const v0, 0x7f080075

    goto :goto_0

    :pswitch_5
    const v0, 0x7f080076

    goto :goto_0

    :pswitch_6
    const v0, 0x7f080077

    goto :goto_0

    :pswitch_7
    const v0, 0x7f080079

    goto :goto_0

    :pswitch_8
    const v0, 0x7f08007a

    goto :goto_0

    :pswitch_9
    const v0, 0x7f08007b

    goto :goto_0

    :pswitch_a
    const v0, 0x7f08007c

    goto :goto_0

    :pswitch_b
    const v0, 0x7f08007d

    goto :goto_0

    :pswitch_c
    const v0, 0x7f08007e

    goto :goto_0

    :pswitch_d
    const v0, 0x7f08007f

    goto :goto_0

    :pswitch_e
    const v0, 0x7f080080

    goto :goto_0

    :pswitch_f
    const v0, 0x7f080081

    goto :goto_0

    :pswitch_10
    const v0, 0x7f080082

    goto :goto_0

    :pswitch_11
    const v0, 0x7f080083

    goto :goto_0

    :pswitch_12
    const v0, 0x7f080084

    goto :goto_0

    :pswitch_13
    const v0, 0x7f080085

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
