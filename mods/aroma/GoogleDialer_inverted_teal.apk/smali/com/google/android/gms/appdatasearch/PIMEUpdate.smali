.class public Lcom/google/android/gms/appdatasearch/PIMEUpdate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/r;


# instance fields
.field final CC:[B

.field final CD:[B

.field final CE:Landroid/os/Bundle;

.field public final account:Landroid/accounts/Account;

.field public final createdTimestamp:J

.field public final inputByUser:Z

.field final mVersionCode:I

.field public final score:J

.field public final sourceClass:I

.field public final sourceCorpusHandle:Ljava/lang/String;

.field public final sourcePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/r;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CREATOR:Lcom/google/android/gms/appdatasearch/r;

    return-void
.end method

.method constructor <init>(I[B[BILjava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;JJLandroid/accounts/Account;)V
    .locals 1
    .param p1    # I
    .param p2    # [B
    .param p3    # [B
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Z
    .param p8    # Landroid/os/Bundle;
    .param p9    # J
    .param p11    # J
    .param p13    # Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CC:[B

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CD:[B

    iput p4, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->sourceClass:I

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->sourcePackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->sourceCorpusHandle:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->inputByUser:Z

    iput-object p8, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CE:Landroid/os/Bundle;

    iput-wide p9, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->score:J

    iput-wide p11, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->createdTimestamp:J

    iput-object p13, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->account:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CREATOR:Lcom/google/android/gms/appdatasearch/r;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CREATOR:Lcom/google/android/gms/appdatasearch/r;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/r;->a(Lcom/google/android/gms/appdatasearch/PIMEUpdate;Landroid/os/Parcel;I)V

    return-void
.end method
