.class public final Lcom/google/android/gms/googlehelp/OfflineSuggestion;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/googlehelp/OfflineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BJ:Ljava/lang/String;

.field final Sx:Ljava/lang/String;

.field final alH:Ljava/lang/String;

.field final mVersionCode:I

.field final po:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/googlehelp/b;

    invoke-direct {v0}, Lcom/google/android/gms/googlehelp/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/googlehelp/OfflineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/googlehelp/OfflineSuggestion;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/googlehelp/OfflineSuggestion;->BJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/googlehelp/OfflineSuggestion;->Sx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/googlehelp/OfflineSuggestion;->po:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/googlehelp/OfflineSuggestion;->alH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/googlehelp/b;->a(Lcom/google/android/gms/googlehelp/OfflineSuggestion;Landroid/os/Parcel;I)V

    return-void
.end method
