.class public final Lcom/google/android/gms/location/reporting/ReportingState$Setting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/reporting/ReportingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# direct methods
.method public static sanitize(I)I
    .locals 1
    .param p0    # I

    invoke-static {p0}, Lcom/google/android/gms/location/reporting/Reporting$Setting;->sanitize(I)I

    move-result v0

    return v0
.end method
