.class public Lcom/google/android/gms/internal/mi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/mj;


# instance fields
.field private final anG:Lcom/google/android/gms/common/people/data/Audience;

.field private final mName:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mi;->CREATOR:Lcom/google/android/gms/internal/mj;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/common/people/data/Audience;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->be(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/mi;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mi;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mi;->anG:Lcom/google/android/gms/common/people/data/Audience;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mi;

    iget v1, p0, Lcom/google/android/gms/internal/mi;->mVersionCode:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mi;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/mi;->anG:Lcom/google/android/gms/common/people/data/Audience;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mi;-><init>(ILjava/lang/String;Lcom/google/android/gms/common/people/data/Audience;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mi;->CREATOR:Lcom/google/android/gms/internal/mj;

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
    check-cast p1, Lcom/google/android/gms/internal/mi;

    iget v2, p0, Lcom/google/android/gms/internal/mi;->mVersionCode:I

    iget v3, p1, Lcom/google/android/gms/internal/mi;->mVersionCode:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/mi;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/mi;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/mi;->anG:Lcom/google/android/gms/common/people/data/Audience;

    iget-object v3, p1, Lcom/google/android/gms/internal/mi;->anG:Lcom/google/android/gms/common/people/data/Audience;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAcl()Lcom/google/android/gms/common/people/data/Audience;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->anG:Lcom/google/android/gms/common/people/data/Audience;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mi;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/mi;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mi;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/mi;->anG:Lcom/google/android/gms/common/people/data/Audience;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/internal/mi;->CREATOR:Lcom/google/android/gms/internal/mj;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mj;->a(Lcom/google/android/gms/internal/mi;Landroid/os/Parcel;I)V

    return-void
.end method
