.class public Lcom/google/android/gms/internal/pi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/pj;


# instance fields
.field private final auH:I

.field private final auI:I

.field private final mUseLargePictureForCp2Images:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/pj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pi;->CREATOR:Lcom/google/android/gms/internal/pj;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/pi;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/pi;->auH:I

    iput p3, p0, Lcom/google/android/gms/internal/pi;->auI:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/pi;->mUseLargePictureForCp2Images:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pi;->mVersionCode:I

    return v0
.end method

.method public nZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pi;->auH:I

    return v0
.end method

.method public oa()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pi;->auI:I

    return v0
.end method

.method public ob()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pi;->mUseLargePictureForCp2Images:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/n;->j(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "imageSize"

    iget v2, p0, Lcom/google/android/gms/internal/pi;->auH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "avatarOptions"

    iget v2, p0, Lcom/google/android/gms/internal/pi;->auI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "useLargePictureForCp2Images"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/pi;->mUseLargePictureForCp2Images:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/internal/pi;Landroid/os/Parcel;I)V

    return-void
.end method
