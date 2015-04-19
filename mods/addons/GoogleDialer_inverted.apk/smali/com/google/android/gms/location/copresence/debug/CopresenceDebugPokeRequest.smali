.class public Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static COMMAND_CLEAR_CACHE:I

.field public static COMMAND_CLEAR_DIRECTIVES:I

.field public static final CREATOR:Lcom/google/android/gms/location/copresence/debug/a;


# instance fields
.field private aof:I

.field private aog:[B

.field private final mVersionCode:I

.field public final messageListener:Lcom/google/android/gms/internal/mn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/debug/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/debug/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->CREATOR:Lcom/google/android/gms/location/copresence/debug/a;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->COMMAND_CLEAR_CACHE:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->COMMAND_CLEAR_DIRECTIVES:I

    return-void
.end method

.method constructor <init>(II[BLandroid/os/IBinder;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # [B
    .param p4    # Landroid/os/IBinder;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;-><init>(II[BLcom/google/android/gms/internal/mn;)V

    return-void

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/internal/mn$a;->bv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mn;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(II[BLcom/google/android/gms/internal/mn;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # [B
    .param p4    # Lcom/google/android/gms/internal/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->aof:I

    iput-object p3, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->aog:[B

    iput-object p4, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->messageListener:Lcom/google/android/gms/internal/mn;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->aof:I

    return v0
.end method

.method public getProtoData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->aog:[B

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->mVersionCode:I

    return v0
.end method

.method mF()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->messageListener:Lcom/google/android/gms/internal/mn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->messageListener:Lcom/google/android/gms/internal/mn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/copresence/debug/a;->a(Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;Landroid/os/Parcel;I)V

    return-void
.end method
