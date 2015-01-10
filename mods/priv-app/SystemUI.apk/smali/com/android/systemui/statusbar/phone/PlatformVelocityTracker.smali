.class public Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;
.super Ljava/lang/Object;
.source "PlatformVelocityTracker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;
    .locals 2

    sget-object v1, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;-><init>()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->setTracker(Landroid/view/VelocityTracker;)V

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    return-void
.end method

.method public getXVelocity()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTracker(Landroid/view/VelocityTracker;)V
    .locals 0
    .param p1    # Landroid/view/VelocityTracker;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    return-void
.end method
