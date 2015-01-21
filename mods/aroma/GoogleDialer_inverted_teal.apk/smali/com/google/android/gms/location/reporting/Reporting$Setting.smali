.class public final Lcom/google/android/gms/location/reporting/Reporting$Setting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/reporting/Reporting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# direct methods
.method public static isOn(I)Z
    .locals 1
    .param p0    # I

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sanitize(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/location/reporting/Reporting$Setting;->isOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    :goto_0
    move p0, v0

    :pswitch_0
    return p0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
