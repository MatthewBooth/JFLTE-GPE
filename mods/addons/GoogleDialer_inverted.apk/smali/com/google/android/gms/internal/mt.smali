.class public Lcom/google/android/gms/internal/mt;
.super Lcom/google/android/gms/location/copresence/Strategy;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/mt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aoA:Z

.field private final aoB:Z

.field private final aoC:I

.field private final aoD:Z

.field private final aoE:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/copresence/Strategy;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mt;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mt;->aoA:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mt;->aoB:Z

    iput p4, p0, Lcom/google/android/gms/internal/mt;->aoC:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/mt;->aoD:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/mt;->aoE:Z

    return-void
.end method

.method public constructor <init>(ZZIZZ)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mt;-><init>(IZZIZZ)V

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

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mt;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->aoA:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mt;->aoA:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->aoB:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mt;->aoB:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/mt;->aoC:I

    iget v3, p1, Lcom/google/android/gms/internal/mt;->aoC:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->aoD:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mt;->aoD:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->aoE:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mt;->aoE:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mt;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->aoA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->aoB:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mt;->aoA:Z

    return v0
.end method

.method public mK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mt;->aoB:Z

    return v0
.end method

.method public mL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mt;->aoC:I

    return v0
.end method

.method public mM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mt;->aoD:Z

    return v0
.end method

.method public mN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mt;->aoE:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/mt;Landroid/os/Parcel;I)V

    return-void
.end method
