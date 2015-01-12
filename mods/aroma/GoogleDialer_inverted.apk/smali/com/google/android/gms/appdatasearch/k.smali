.class public Lcom/google/android/gms/appdatasearch/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/l;


# instance fields
.field final corpusName:Ljava/lang/String;

.field final features:[Lcom/google/android/gms/appdatasearch/Feature;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/l;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/k;->CREATOR:Lcom/google/android/gms/appdatasearch/l;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Lcom/google/android/gms/appdatasearch/Feature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/k;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/k;->corpusName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/k;->features:[Lcom/google/android/gms/appdatasearch/Feature;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/k;->CREATOR:Lcom/google/android/gms/appdatasearch/l;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/k;->CREATOR:Lcom/google/android/gms/appdatasearch/l;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/l;->a(Lcom/google/android/gms/appdatasearch/k;Landroid/os/Parcel;I)V

    return-void
.end method
