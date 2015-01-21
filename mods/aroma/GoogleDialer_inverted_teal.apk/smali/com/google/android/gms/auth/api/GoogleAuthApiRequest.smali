.class public Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/api/GoogleAuthApiRequestCreator;


# instance fields
.field FB:Ljava/lang/String;

.field FC:Landroid/os/Bundle;

.field FD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field FE:Ljava/lang/String;

.field FF:I

.field FG:Landroid/os/Bundle;

.field FH:[B

.field FI:J

.field accountName:Ljava/lang/String;

.field name:Ljava/lang/String;

.field version:Ljava/lang/String;

.field final versionCode:I

.field yQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequestCreator;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequestCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->CREATOR:Lcom/google/android/gms/auth/api/GoogleAuthApiRequestCreator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/os/Bundle;[BJ)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Landroid/os/Bundle;
    .param p7    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # I
    .param p11    # Landroid/os/Bundle;
    .param p12    # [B
    .param p13    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            "[BJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->version:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FB:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->yQ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FC:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->accountName:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FD:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FE:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FF:I

    iput-object p11, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FG:Landroid/os/Bundle;

    iput-object p12, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FH:[B

    iput-wide p13, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FI:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullScope()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->getScope()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScope()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FD:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->FD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ API: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->getFullScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequestCreator;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;Landroid/os/Parcel;I)V

    return-void
.end method
