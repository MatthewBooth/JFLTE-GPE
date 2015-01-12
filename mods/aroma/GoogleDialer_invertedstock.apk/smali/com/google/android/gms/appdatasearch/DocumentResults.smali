.class public Lcom/google/android/gms/appdatasearch/DocumentResults;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/f;


# instance fields
.field final Ce:Landroid/os/Bundle;

.field final Cf:Landroid/os/Bundle;

.field final Cg:Landroid/os/Bundle;

.field final mErrorMessage:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/f;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentResults;->CREATOR:Lcom/google/android/gms/appdatasearch/f;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/os/Bundle;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->Ce:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->Cf:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->Cg:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentResults;->CREATOR:Lcom/google/android/gms/appdatasearch/f;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentResults;->CREATOR:Lcom/google/android/gms/appdatasearch/f;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/f;->a(Lcom/google/android/gms/appdatasearch/DocumentResults;Landroid/os/Parcel;I)V

    return-void
.end method
