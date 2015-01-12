.class public Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .param p1    # Ljava/lang/Integer;

    if-nez p1, :cond_0

    const v0, 0x7f0b0099

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0b0098

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0b0094

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0096

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b0097

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b0095

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
