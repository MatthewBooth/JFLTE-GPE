.class public Lcom/google/android/gms/udc/SettingState;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/udc/b;


# instance fields
.field private aIr:I

.field private aIs:I

.field private aIt:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/udc/b;

    invoke-direct {v0}, Lcom/google/android/gms/udc/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/udc/SettingState;->CREATOR:Lcom/google/android/gms/udc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/udc/SettingState;->mVersionCode:I

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/udc/SettingState;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/udc/SettingState;->aIr:I

    iput p3, p0, Lcom/google/android/gms/udc/SettingState;->aIs:I

    iput p4, p0, Lcom/google/android/gms/udc/SettingState;->aIt:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/udc/SettingState;->CREATOR:Lcom/google/android/gms/udc/b;

    const/4 v0, 0x0

    return v0
.end method

.method public getSettingAvailability()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/SettingState;->aIt:I

    return v0
.end method

.method public getSettingId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/SettingState;->aIr:I

    return v0
.end method

.method public getSettingValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/SettingState;->aIs:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/SettingState;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/udc/SettingState;->CREATOR:Lcom/google/android/gms/udc/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/udc/b;->a(Lcom/google/android/gms/udc/SettingState;Landroid/os/Parcel;I)V

    return-void
.end method
