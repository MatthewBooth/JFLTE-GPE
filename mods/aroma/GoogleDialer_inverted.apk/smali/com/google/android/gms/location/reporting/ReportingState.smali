.class public Lcom/google/android/gms/location/reporting/ReportingState;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/reporting/ReportingState$Setting;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/d;


# instance fields
.field private final ard:I

.field private final are:I

.field private final arf:Z

.field private final arg:Z

.field private final arh:Z

.field private final ari:I

.field private final arj:Ljava/lang/Integer;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/d;

    return-void
.end method

.method public constructor <init>(IIIZZZILjava/lang/Integer;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # Z
    .param p6    # Z
    .param p7    # I
    .param p8    # Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ard:I

    iput p3, p0, Lcom/google/android/gms/location/reporting/ReportingState;->are:I

    iput-boolean p4, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arf:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arg:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arh:Z

    iput p7, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ari:I

    iput-object p8, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arj:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/d;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/reporting/ReportingState;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/ReportingState;

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ard:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->ard:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->are:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->are:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arf:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->arf:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arg:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->arg:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arh:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->arh:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ari:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->ari:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arj:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->arj:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExpectedOptInResult()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ari:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/OptInResult;->sanitize(I)I

    move-result v0

    return v0
.end method

.method public getHistoryEnabled()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->are:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/ReportingState$Setting;->sanitize(I)I

    move-result v0

    return v0
.end method

.method public getReportingEnabled()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ard:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/ReportingState$Setting;->sanitize(I)I

    move-result v0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ard:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->are:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arf:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arg:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arh:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ari:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arj:Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arg:Z

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arf:Z

    return v0
.end method

.method public isDeferringToMaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arh:Z

    return v0
.end method

.method nj()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arj:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportingState{mReportingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->are:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpectedOptInResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->ari:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->arj:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/internal/nz;->d(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/d;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/d;->a(Lcom/google/android/gms/location/reporting/ReportingState;Landroid/os/Parcel;I)V

    return-void
.end method
