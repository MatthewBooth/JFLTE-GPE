.class public Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/d;


# instance fields
.field final BJ:Ljava/lang/String;

.field final Fl:I

.field final HA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final Hv:Ljava/lang/String;

.field final Hw:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

.field Hx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;"
        }
    .end annotation
.end field

.field final Hy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;"
        }
    .end annotation
.end field

.field Hz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final uO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/d;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, p7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Fl:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->BJ:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hv:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/o;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->uO:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hw:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    if-nez p6, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hy:Ljava/util/Map;

    if-nez p7, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->HA:Ljava/util/Set;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method private static d(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
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

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hv:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hv:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->BJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->BJ:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->uO:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->uO:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hw:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hw:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->HA:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->HA:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hy:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hy:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->BJ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->uO:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->HA:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hw:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hy:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hy:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hx:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->HA:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Hz:Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/proximity/data/d;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;Landroid/os/Parcel;I)V

    return-void
.end method
