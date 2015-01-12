.class public final Lcom/google/android/gms/common/people/data/AudienceMember;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/people/data/b;


# instance fields
.field private final DJ:I

.field private final OA:Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final QQ:I

.field private final QR:Ljava/lang/String;

.field private final QS:Ljava/lang/String;

.field private final QT:Ljava/lang/String;

.field private final QU:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/people/data/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/people/data/AudienceMember;->CREATOR:Lcom/google/android/gms/common/people/data/b;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->DJ:I

    iput p3, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QQ:I

    iput-object p4, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QR:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QS:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QT:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QU:Ljava/lang/String;

    if-eqz p8, :cond_0

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->OA:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static forGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 7
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/internal/pn;->avV:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/pn;->avV:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->DJ:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->DJ:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QQ:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->QQ:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QR:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->QR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QS:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->QS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QU:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QR:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QQ:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QT:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->OA:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPeopleQualifiedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QS:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->DJ:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->DJ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QS:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPerson()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->DJ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersonalCircle()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->DJ:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->QQ:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->isPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Person [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getPeopleQualifiedId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->isPersonalCircle()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Circle [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getCircleId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Group [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getCircleId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/people/data/b;->a(Lcom/google/android/gms/common/people/data/AudienceMember;Landroid/os/Parcel;I)V

    return-void
.end method
