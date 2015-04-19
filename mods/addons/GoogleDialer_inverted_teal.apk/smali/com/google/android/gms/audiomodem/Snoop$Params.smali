.class public Lcom/google/android/gms/audiomodem/Snoop$Params;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/audiomodem/Snoop;
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
            "Lcom/google/android/gms/audiomodem/Snoop$Params;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EU:[Lcom/google/android/gms/audiomodem/Encoding;

.field private final EV:Z

.field private final EW:Z

.field private final EX:J

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/e;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/Snoop$Params;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/audiomodem/Encoding;ZZJ)V
    .locals 1
    .param p1    # I
    .param p2    # [Lcom/google/android/gms/audiomodem/Encoding;
    .param p3    # Z
    .param p4    # Z
    .param p5    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->EU:[Lcom/google/android/gms/audiomodem/Encoding;

    iput-boolean p3, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->EV:Z

    iput-boolean p4, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->EW:Z

    iput-wide p5, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->EX:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDurationWithNoBroadcasterMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->EX:J

    return-wide v0
.end method

.method public getEncodings()[Lcom/google/android/gms/audiomodem/Encoding;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->EU:[Lcom/google/android/gms/audiomodem/Encoding;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->mVersionCode:I

    return v0
.end method

.method public shouldCallbackOnBroadcasterDetected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->EV:Z

    return v0
.end method

.method public shouldCallbackOnNoBroadcasterDetected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/audiomodem/Snoop$Params;->EW:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/audiomodem/e;->a(Lcom/google/android/gms/audiomodem/Snoop$Params;Landroid/os/Parcel;I)V

    return-void
.end method
