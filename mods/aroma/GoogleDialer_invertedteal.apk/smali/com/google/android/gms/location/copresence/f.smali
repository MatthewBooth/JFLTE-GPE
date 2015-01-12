.class public Lcom/google/android/gms/location/copresence/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/copresence/g;


# instance fields
.field private final anC:Z

.field private final anD:Z

.field private anE:[Lcom/google/android/gms/internal/mi;

.field private anF:[Lcom/google/android/gms/internal/mg;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/f;->CREATOR:Lcom/google/android/gms/location/copresence/g;

    return-void
.end method

.method constructor <init>(IZZ[Lcom/google/android/gms/internal/mi;[Lcom/google/android/gms/internal/mg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/f;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/copresence/f;->anC:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/copresence/f;->anD:Z

    iput-object p4, p0, Lcom/google/android/gms/location/copresence/f;->anE:[Lcom/google/android/gms/internal/mi;

    iput-object p5, p0, Lcom/google/android/gms/location/copresence/f;->anF:[Lcom/google/android/gms/internal/mg;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/location/copresence/f;

    iget v1, p0, Lcom/google/android/gms/location/copresence/f;->mVersionCode:I

    iget-boolean v2, p0, Lcom/google/android/gms/location/copresence/f;->anC:Z

    iget-boolean v3, p0, Lcom/google/android/gms/location/copresence/f;->anD:Z

    iget-object v4, p0, Lcom/google/android/gms/location/copresence/f;->anE:[Lcom/google/android/gms/internal/mi;

    if-nez v4, :cond_0

    move-object v4, v5

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/location/copresence/f;->anF:[Lcom/google/android/gms/internal/mg;

    if-nez v6, :cond_1

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/copresence/f;-><init>(IZZ[Lcom/google/android/gms/internal/mi;[Lcom/google/android/gms/internal/mg;)V

    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/location/copresence/f;->anE:[Lcom/google/android/gms/internal/mi;

    invoke-virtual {v4}, [Lcom/google/android/gms/internal/mi;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/mi;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/location/copresence/f;->anF:[Lcom/google/android/gms/internal/mg;

    invoke-virtual {v5}, [Lcom/google/android/gms/internal/mg;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/mg;

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/copresence/f;->CREATOR:Lcom/google/android/gms/location/copresence/g;

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
    check-cast p1, Lcom/google/android/gms/location/copresence/f;

    iget v2, p0, Lcom/google/android/gms/location/copresence/f;->mVersionCode:I

    iget v3, p1, Lcom/google/android/gms/location/copresence/f;->mVersionCode:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/location/copresence/f;->anC:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/copresence/f;->anC:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/location/copresence/f;->anD:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/copresence/f;->anD:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/copresence/f;->anE:[Lcom/google/android/gms/internal/mi;

    iget-object v3, p1, Lcom/google/android/gms/location/copresence/f;->anE:[Lcom/google/android/gms/internal/mi;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/copresence/f;->anF:[Lcom/google/android/gms/internal/mg;

    iget-object v3, p1, Lcom/google/android/gms/location/copresence/f;->anF:[Lcom/google/android/gms/internal/mg;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/f;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/copresence/f;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/location/copresence/f;->anD:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/location/copresence/f;->anC:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/copresence/f;->anE:[Lcom/google/android/gms/internal/mi;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/location/copresence/f;->anF:[Lcom/google/android/gms/internal/mg;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/copresence/f;->anC:Z

    return v0
.end method

.method public mB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/copresence/f;->anD:Z

    return v0
.end method

.method public mC()[Lcom/google/android/gms/internal/mi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/f;->anE:[Lcom/google/android/gms/internal/mi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/copresence/f;->anE:[Lcom/google/android/gms/internal/mi;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mi;

    goto :goto_0
.end method

.method public mD()[Lcom/google/android/gms/internal/mg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/f;->anF:[Lcom/google/android/gms/internal/mg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/copresence/f;->anF:[Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mg;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/location/copresence/f;->CREATOR:Lcom/google/android/gms/location/copresence/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/copresence/g;->a(Lcom/google/android/gms/location/copresence/f;Landroid/os/Parcel;I)V

    return-void
.end method
