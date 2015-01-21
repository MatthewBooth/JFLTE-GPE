.class public Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/s;


# instance fields
.field final mErrorMessage:Ljava/lang/String;

.field final mVersionCode:I

.field public final nextIterToken:[B

.field public final updates:[Lcom/google/android/gms/appdatasearch/PIMEUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/s;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/s;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[B[Lcom/google/android/gms/appdatasearch/PIMEUpdate;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [B
    .param p4    # [Lcom/google/android/gms/appdatasearch/PIMEUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->nextIterToken:[B

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->updates:[Lcom/google/android/gms/appdatasearch/PIMEUpdate;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/s;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/s;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/s;->a(Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;Landroid/os/Parcel;I)V

    return-void
.end method
