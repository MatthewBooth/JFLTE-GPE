.class public Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/audiomodem/TokenBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ED:[B

.field private final EU:[Lcom/google/android/gms/audiomodem/Encoding;

.field private final EY:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/f;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BI[Lcom/google/android/gms/audiomodem/Encoding;)V
    .locals 0
    .param p1    # I
    .param p2    # [B
    .param p3    # I
    .param p4    # [Lcom/google/android/gms/audiomodem/Encoding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->ED:[B

    iput p3, p0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->EY:I

    iput-object p4, p0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->EU:[Lcom/google/android/gms/audiomodem/Encoding;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEncodings()[Lcom/google/android/gms/audiomodem/Encoding;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->EU:[Lcom/google/android/gms/audiomodem/Encoding;

    return-object v0
.end method

.method public getToken()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->ED:[B

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->mVersionCode:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;->EY:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/audiomodem/f;->a(Lcom/google/android/gms/audiomodem/TokenBroadcaster$Params;Landroid/os/Parcel;I)V

    return-void
.end method
