.class public Lcom/google/android/gms/location/copresence/Strategy$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/copresence/Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private anZ:Z

.field private aoa:Z

.field private aob:I

.field private aoc:Z

.field private aod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->aob:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/copresence/Strategy;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mt;

    iget-boolean v1, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->anZ:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->aoa:Z

    iget v3, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->aob:I

    iget-boolean v4, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->aoc:Z

    iget-boolean v5, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->aod:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mt;-><init>(ZZIZZ)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLowPower()Lcom/google/android/gms/location/copresence/Strategy$Builder;
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->aod:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Cannot call setNoOptInRequired() in conjunction with setLowPower()."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->anZ:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWakeUpOthers()Lcom/google/android/gms/location/copresence/Strategy$Builder;
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->aod:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Cannot call setNoOptInRequired() in conjunction with setWakeUpOthers()."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/location/copresence/Strategy$Builder;->aoa:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
