.class public Lcom/google/android/gms/location/reporting/InactiveReason;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/c;


# instance fields
.field private final arb:I

.field private final mName:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/InactiveReason;->CREATOR:Lcom/google/android/gms/location/reporting/c;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->arb:I

    iput-object p3, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/InactiveReason;->CREATOR:Lcom/google/android/gms/location/reporting/c;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/location/reporting/InactiveReason;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->arb:I

    check-cast p1, Lcom/google/android/gms/location/reporting/InactiveReason;

    iget v1, p1, Lcom/google/android/gms/location/reporting/InactiveReason;->arb:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdentifier()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->arb:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->arb:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InactiveReason{mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->arb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    sget-object v0, Lcom/google/android/gms/location/reporting/InactiveReason;->CREATOR:Lcom/google/android/gms/location/reporting/c;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/c;->a(Lcom/google/android/gms/location/reporting/InactiveReason;Landroid/os/Parcel;I)V

    return-void
.end method
