.class public Lcom/google/android/gms/audiomodem/DtmfEncoding;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/audiomodem/DtmfEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EF:I

.field private final EG:Z

.field private final EK:F

.field private final EP:I

.field private final EQ:I

.field private final ER:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/c;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZFIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # F
    .param p5    # I
    .param p6    # I
    .param p7    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EF:I

    iput-boolean p3, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EG:Z

    iput p4, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EK:F

    iput p5, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EP:I

    iput p6, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EQ:I

    iput p7, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->ER:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->mVersionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DtmfEncoding;->getVersionCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EF:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DtmfEncoding;->getTokenLengthBytes()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EG:Z

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DtmfEncoding;->shouldIncludeParitySymbol()Z

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EK:F

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DtmfEncoding;->getCoderSampleRate()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EP:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DtmfEncoding;->getBasebandDecimationFactor()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EQ:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DtmfEncoding;->getWindowDurationMillis()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->ER:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DtmfEncoding;->getFrequenciesPerSymbol()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBasebandDecimationFactor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EP:I

    return v0
.end method

.method public getCoderSampleRate()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EK:F

    return v0
.end method

.method public getFrequenciesPerSymbol()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->ER:I

    return v0
.end method

.method public getTokenLengthBytes()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EF:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->mVersionCode:I

    return v0
.end method

.method public getWindowDurationMillis()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EQ:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EG:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EK:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->ER:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public shouldIncludeParitySymbol()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->EG:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/audiomodem/c;->a(Lcom/google/android/gms/audiomodem/DtmfEncoding;Landroid/os/Parcel;I)V

    return-void
.end method
