.class public Lcom/google/android/gms/internal/mg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/mh;


# instance fields
.field private final BJ:Ljava/lang/String;

.field private final anH:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mg;->CREATOR:Lcom/google/android/gms/internal/mh;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->be(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/mg;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mg;->BJ:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mg;->anH:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mg;

    iget v1, p0, Lcom/google/android/gms/internal/mg;->mVersionCode:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mg;->BJ:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/mg;->anH:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mg;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mg;->CREATOR:Lcom/google/android/gms/internal/mh;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mg;

    iget v2, p0, Lcom/google/android/gms/internal/mg;->mVersionCode:I

    iget v3, p1, Lcom/google/android/gms/internal/mg;->mVersionCode:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/mg;->BJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/mg;->BJ:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mg;->anH:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mg;->anH:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mg;->BJ:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mg;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/mg;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mg;->BJ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mg;->anH:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOptedIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mg;->anH:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureOptIn[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mg;->BJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOptedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mg;->anH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/internal/mg;->CREATOR:Lcom/google/android/gms/internal/mh;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mh;->a(Lcom/google/android/gms/internal/mg;Landroid/os/Parcel;I)V

    return-void
.end method
