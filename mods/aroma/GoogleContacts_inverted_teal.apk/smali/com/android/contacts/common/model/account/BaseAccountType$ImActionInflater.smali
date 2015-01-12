.class public Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1    # Ljava/lang/Integer;

    const v0, 0x7f0b00ad

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b00a5

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b00a6

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b00a7

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0b00a8

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0b00a9

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0b00aa

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0b00ab

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0b00ac

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
