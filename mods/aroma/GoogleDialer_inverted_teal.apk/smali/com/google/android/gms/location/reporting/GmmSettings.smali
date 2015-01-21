.class public Lcom/google/android/gms/location/reporting/GmmSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/a;


# instance fields
.field private final Ca:Landroid/accounts/Account;

.field private final aqZ:J

.field private final ara:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/a;

    return-void
.end method

.method public constructor <init>(IJLandroid/accounts/Account;Z)V
    .locals 0
    .param p1    # I
    .param p2    # J
    .param p4    # Landroid/accounts/Account;
    .param p5    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->aqZ:J

    iput-object p4, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    iput-boolean p5, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ara:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/a;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/GmmSettings;

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->aqZ:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->aqZ:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ara:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->ara:Z

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->mVersionCode:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    iget-object v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    return-object v0
.end method

.method public getReadMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->aqZ:J

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->mVersionCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->aqZ:J

    iget-wide v4, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->aqZ:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ara:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isReportingSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ara:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GmmSettings{mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValueReadMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->aqZ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->Ca:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/gms/internal/nz;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportingSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ara:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    sget-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/a;->a(Lcom/google/android/gms/location/reporting/GmmSettings;Landroid/os/Parcel;I)V

    return-void
.end method
