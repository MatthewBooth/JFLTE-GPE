.class public Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/b;


# instance fields
.field final Fl:I

.field final mData:[B

.field final mPermitAccessId:Ljava/lang/String;

.field final mPermitId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/b;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # [B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->Fl:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mPermitId:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mPermitAccessId:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mPermitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mPermitId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mPermitAccessId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mPermitAccessId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mData:[B

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mPermitId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mPermitAccessId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/proximity/data/b;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;Landroid/os/Parcel;I)V

    return-void
.end method
