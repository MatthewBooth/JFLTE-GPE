.class public Lcom/google/android/gms/audiomodem/DsssEncoding;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/audiomodem/DsssEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EF:I

.field private final EG:Z

.field private final EH:Z

.field private final EI:I

.field private final EJ:I

.field private final EK:F

.field private final EL:I

.field private final EM:F

.field private final EN:I

.field private final EO:I

.field private final EP:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/b;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/DsssEncoding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZZIIFIFIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Z
    .param p5    # I
    .param p6    # I
    .param p7    # F
    .param p8    # I
    .param p9    # F
    .param p10    # I
    .param p11    # I
    .param p12    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EF:I

    iput-boolean p3, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EG:Z

    iput-boolean p4, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EH:Z

    iput p5, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EI:I

    iput p6, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EJ:I

    iput p7, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EK:F

    iput p8, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EL:I

    iput p9, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EM:F

    iput p10, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EN:I

    iput p11, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EO:I

    iput p12, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EP:I

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
    instance-of v2, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/audiomodem/DsssEncoding;

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->mVersionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getVersionCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EF:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getTokenLengthBytes()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EG:Z

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->shouldIncludeParitySymbol()Z

    move-result v3

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EH:Z

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->shouldUseSingleSideband()Z

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EI:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getNumberOfTapsLfsr()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EJ:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getCodeNumber()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EK:F

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getCoderSampleRate()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EL:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getUpsamplingFactor()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EM:F

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getDesiredCarrierFrequency()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EN:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getBitsPerSymbol()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EO:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getMinCyclesPerFrame()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EP:I

    invoke-virtual {p1}, Lcom/google/android/gms/audiomodem/DsssEncoding;->getBasebandDecimationFactor()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBasebandDecimationFactor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EP:I

    return v0
.end method

.method public getBitsPerSymbol()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EN:I

    return v0
.end method

.method public getCodeNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EJ:I

    return v0
.end method

.method public getCoderSampleRate()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EK:F

    return v0
.end method

.method public getDesiredCarrierFrequency()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EM:F

    return v0
.end method

.method public getMinCyclesPerFrame()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EO:I

    return v0
.end method

.method public getNumberOfTapsLfsr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EI:I

    return v0
.end method

.method public getTokenLengthBytes()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EF:I

    return v0
.end method

.method public getUpsamplingFactor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EL:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EG:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EH:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EJ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EK:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EM:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public shouldIncludeParitySymbol()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EG:Z

    return v0
.end method

.method public shouldUseSingleSideband()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->EH:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/audiomodem/b;->a(Lcom/google/android/gms/audiomodem/DsssEncoding;Landroid/os/Parcel;I)V

    return-void
.end method
