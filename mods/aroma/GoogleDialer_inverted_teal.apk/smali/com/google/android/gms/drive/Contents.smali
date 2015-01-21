.class public Lcom/google/android/gms/drive/Contents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/Contents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Pb:Landroid/os/ParcelFileDescriptor;

.field final Sb:I

.field final Sc:Lcom/google/android/gms/drive/DriveId;

.field final Sd:Z

.field private Se:Z

.field private Sf:Z

.field private mClosed:Z

.field final mVersionCode:I

.field final uQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/a;

    invoke-direct {v0}, Lcom/google/android/gms/drive/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;Z)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/ParcelFileDescriptor;
    .param p3    # I
    .param p4    # I
    .param p5    # Lcom/google/android/gms/drive/DriveId;
    .param p6    # Z

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->mClosed:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->Se:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->Sf:Z

    iput p1, p0, Lcom/google/android/gms/drive/Contents;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Contents;->Pb:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/drive/Contents;->uQ:I

    iput p4, p0, Lcom/google/android/gms/drive/Contents;->Sb:I

    iput-object p5, p0, Lcom/google/android/gms/drive/Contents;->Sc:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p6, p0, Lcom/google/android/gms/drive/Contents;->Sd:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Contents;->uQ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/a;->a(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V

    return-void
.end method
