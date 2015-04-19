.class public Lcom/google/android/gms/appdatasearch/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/ad;


# instance fields
.field final Dl:[Lcom/google/android/gms/appdatasearch/DocumentId;

.field final Dm:I

.field final mVersionCode:I

.field final xx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/ad;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/ac;->CREATOR:Lcom/google/android/gms/appdatasearch/ad;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Lcom/google/android/gms/appdatasearch/DocumentId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/ac;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/ac;->xx:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/ac;->Dl:[Lcom/google/android/gms/appdatasearch/DocumentId;

    iput p4, p0, Lcom/google/android/gms/appdatasearch/ac;->Dm:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/ac;->CREATOR:Lcom/google/android/gms/appdatasearch/ad;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/ac;->CREATOR:Lcom/google/android/gms/appdatasearch/ad;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/ad;->a(Lcom/google/android/gms/appdatasearch/ac;Landroid/os/Parcel;I)V

    return-void
.end method
