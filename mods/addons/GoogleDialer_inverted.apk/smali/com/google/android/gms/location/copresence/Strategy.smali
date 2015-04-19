.class public abstract Lcom/google/android/gms/location/copresence/Strategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/copresence/Strategy$Builder;
    }
.end annotation


# static fields
.field private static anW:Lcom/google/android/gms/location/copresence/Strategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static anX:Lcom/google/android/gms/location/copresence/Strategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static anY:Lcom/google/android/gms/location/copresence/Strategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/Strategy$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/Strategy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/Strategy$Builder;->setWakeUpOthers()Lcom/google/android/gms/location/copresence/Strategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/Strategy$Builder;->build()Lcom/google/android/gms/location/copresence/Strategy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/copresence/Strategy;->anW:Lcom/google/android/gms/location/copresence/Strategy;

    new-instance v0, Lcom/google/android/gms/location/copresence/Strategy$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/Strategy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/Strategy$Builder;->build()Lcom/google/android/gms/location/copresence/Strategy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/copresence/Strategy;->anX:Lcom/google/android/gms/location/copresence/Strategy;

    new-instance v0, Lcom/google/android/gms/location/copresence/Strategy$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/Strategy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/Strategy$Builder;->setLowPower()Lcom/google/android/gms/location/copresence/Strategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/copresence/Strategy$Builder;->build()Lcom/google/android/gms/location/copresence/Strategy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/copresence/Strategy;->anY:Lcom/google/android/gms/location/copresence/Strategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
