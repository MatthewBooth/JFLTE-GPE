.class public Lcom/google/android/gms/drive/internal/CloseContentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CloseContentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Tf:Lcom/google/android/gms/drive/Contents;

.field final Th:Ljava/lang/Boolean;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/Contents;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/drive/Contents;
    .param p3    # Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->Tf:Lcom/google/android/gms/drive/Contents;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->Th:Ljava/lang/Boolean;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/f;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
