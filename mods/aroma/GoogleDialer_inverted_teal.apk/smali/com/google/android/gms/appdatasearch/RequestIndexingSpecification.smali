.class public Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/ab;


# instance fields
.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/ab;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/ab;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/ab;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;->mVersionCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/ab;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/ab;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/ab;->a(Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;Landroid/os/Parcel;I)V

    return-void
.end method
