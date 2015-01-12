.class public Lcom/google/android/gms/internal/og;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/og;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Et:Ljava/lang/String;

.field private final arH:Z

.field private final arI:Z

.field private final arJ:Z

.field private final arK:Z

.field private final arL:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/oh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/oh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/og;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/og;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/og;->Et:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/og;->arH:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/og;->arI:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/og;->arJ:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/og;->arK:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/og;->arL:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/og;->Et:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/og;->mVersionCode:I

    return v0
.end method

.method public isOptedInForAppUsageCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->arJ:Z

    return v0
.end method

.method public isOptedInForCallAndSmsLogCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->arK:Z

    return v0
.end method

.method public isOptedInForContactUpload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->arL:Z

    return v0
.end method

.method public isOptedInForDeviceData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->arI:Z

    return v0
.end method

.method public isOptedInForDeviceState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->arH:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/oh;->a(Lcom/google/android/gms/internal/og;Landroid/os/Parcel;I)V

    return-void
.end method
