.class public Lcom/google/android/gms/location/LocationStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/c;


# instance fields
.field ang:I

.field anh:I

.field ani:J

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationStatus;->CREATOR:Lcom/google/android/gms/location/c;

    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationStatus;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/LocationStatus;->ang:I

    iput p3, p0, Lcom/google/android/gms/location/LocationStatus;->anh:I

    iput-wide p4, p0, Lcom/google/android/gms/location/LocationStatus;->ani:J

    return-void
.end method

.method private gh(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "STATUS_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "STATUS_SUCCESSFUL"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATUS_TIMED_OUT_ON_SCAN"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATUS_NO_INFO_IN_DATABASE"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATUS_INVALID_SCAN"

    goto :goto_0

    :pswitch_5
    const-string v0, "STATUS_UNABLE_TO_QUERY_DATABASE"

    goto :goto_0

    :pswitch_6
    const-string v0, "STATUS_SCANS_DISABLED_IN_SETTINGS"

    goto :goto_0

    :pswitch_7
    const-string v0, "STATUS_LOCATION_DISABLED_IN_SETTINGS"

    goto :goto_0

    :pswitch_8
    const-string v0, "STATUS_IN_PROGRESS"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/LocationStatus;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/LocationStatus;

    iget v1, p0, Lcom/google/android/gms/location/LocationStatus;->ang:I

    iget v2, p1, Lcom/google/android/gms/location/LocationStatus;->ang:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/LocationStatus;->anh:I

    iget v2, p1, Lcom/google/android/gms/location/LocationStatus;->anh:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationStatus;->ani:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationStatus;->ani:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->ang:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->anh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationStatus;->ani:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationStatus[cell status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->ang:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/location/LocationStatus;->gh(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->anh:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/location/LocationStatus;->gh(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", elapsed realtime ns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationStatus;->ani:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/location/LocationStatus;Landroid/os/Parcel;I)V

    return-void
.end method
