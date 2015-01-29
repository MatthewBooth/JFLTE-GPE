.class public Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
.super Ljava/lang/Object;
.source "SContextContexts.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SContextPedometerContext"
.end annotation


# instance fields
.field protected mCalorie:D

.field protected mDistance:D

.field protected mRunStepCount:J

.field protected mSpeed:D

.field protected mStepStatus:I

.field protected mTotalStepCount:J

.field protected mUpDownStepCount:J

.field protected mWalkStepCount:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mCalorie:D

    iput-wide v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mDistance:D

    iput-wide v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mSpeed:D

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepStatus:I

    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mTotalStepCount:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mWalkStepCount:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mRunStepCount:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mUpDownStepCount:J

    return-void
.end method
