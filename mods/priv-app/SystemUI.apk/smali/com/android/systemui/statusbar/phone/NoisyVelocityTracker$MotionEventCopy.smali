.class Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;
.super Ljava/lang/Object;
.source "NoisyVelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotionEventCopy"
.end annotation


# instance fields
.field t:J

.field x:F

.field y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 1
    .param p1    # F
    .param p2    # F
    .param p3    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->x:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->y:F

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    return-void
.end method
