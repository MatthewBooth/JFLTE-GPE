.class public Lcom/google/android/gms/appdatasearch/NativeApiInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/q;


# instance fields
.field final mVersionCode:I

.field public final sharedLibAbsoluteFilename:Ljava/lang/String;

.field public final sharedLibExtensionAbsoluteFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/q;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/q;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->sharedLibAbsoluteFilename:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->sharedLibExtensionAbsoluteFilename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/q;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/q;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/q;->a(Lcom/google/android/gms/appdatasearch/NativeApiInfo;Landroid/os/Parcel;I)V

    return-void
.end method
