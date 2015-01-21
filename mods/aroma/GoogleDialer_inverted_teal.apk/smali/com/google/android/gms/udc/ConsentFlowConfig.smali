.class public Lcom/google/android/gms/udc/ConsentFlowConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/udc/a;


# instance fields
.field private aIo:Z

.field private aIp:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/udc/a;

    invoke-direct {v0}, Lcom/google/android/gms/udc/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/udc/ConsentFlowConfig;->CREATOR:Lcom/google/android/gms/udc/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/google/android/gms/udc/ConsentFlowConfig;-><init>(IZZ)V

    return-void
.end method

.method constructor <init>(IZZ)V
    .locals 0
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/udc/ConsentFlowConfig;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/udc/ConsentFlowConfig;->aIo:Z

    iput-boolean p3, p0, Lcom/google/android/gms/udc/ConsentFlowConfig;->aIp:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/udc/ConsentFlowConfig;->CREATOR:Lcom/google/android/gms/udc/a;

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/ConsentFlowConfig;->mVersionCode:I

    return v0
.end method

.method public isIconRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/udc/ConsentFlowConfig;->aIp:Z

    return v0
.end method

.method public isPermissionExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/udc/ConsentFlowConfig;->aIo:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/udc/ConsentFlowConfig;->CREATOR:Lcom/google/android/gms/udc/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/udc/a;->a(Lcom/google/android/gms/udc/ConsentFlowConfig;Landroid/os/Parcel;I)V

    return-void
.end method
