.class public Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ad;


# instance fields
.field FM:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field GF:Landroid/os/Bundle;

.field volatile GK:Z

.field GV:Ljava/lang/String;

.field volatile GW:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field volatile GX:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

.field GY:Ljava/lang/String;

.field volatile GZ:Z

.field volatile Ge:Z

.field volatile Ha:Z

.field volatile Hb:Z

.field accountName:Ljava/lang/String;

.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ad;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GF:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GY:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->version:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;ZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;ZZZ)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .param p6    # Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
    .param p7    # Z
    .param p8    # Z
    .param p9    # Ljava/lang/String;
    .param p10    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p11    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .param p12    # Z
    .param p13    # Z
    .param p14    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GF:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GY:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GV:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GF:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GW:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GX:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GK:Z

    iput-boolean p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ge:Z

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GY:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->FM:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->GZ:Z

    iput-boolean p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ha:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ad;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Landroid/os/Parcel;I)V

    return-void
.end method
