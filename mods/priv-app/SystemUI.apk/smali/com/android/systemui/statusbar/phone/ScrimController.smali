.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAnimateChange:Z

.field private mAnimateKeyguardFadingOut:Z

.field private mAnimationDelay:J

.field private mAnimationStarted:Z

.field private mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

.field private mBouncerShowing:Z

.field private mDarkenWhileDragging:Z

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mDurationOverride:J

.field private mExpanding:Z

.field private mFraction:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardShowing:Z

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseIn:Ljava/lang/Runnable;

.field private final mPulseInFinished:Ljava/lang/Runnable;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutFinished:Ljava/lang/Runnable;

.field private final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field private final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private mScrimSrcEnabled:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Z)V
    .locals 4
    .param p1    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2    # Lcom/android/systemui/statusbar/ScrimView;
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseIn:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$4;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$5;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOut:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$6;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/ScrimController;J)J
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/ScrimController;J)J
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/ScrimView;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2    # F

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private cancelPulsing()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->pulseFinished()V

    :cond_1
    return-void
.end method

.method private pulseFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    :cond_0
    return-void
.end method

.method private scheduleUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    goto :goto_0
.end method

.method private setScrimBehindColor(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 5
    .param p1    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2    # F

    const v4, 0x7f0e002a

    const/4 v3, 0x0

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/ScrimView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    invoke-virtual {p1, v4, v2}, Lcom/android/systemui/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    :cond_0
    const/high16 v2, 0x437f0000

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setScrimColor(I)V

    goto :goto_0
.end method

.method private setScrimInFrontColor(F)V
    .locals 3
    .param p1    # F

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    goto :goto_0
.end method

.method private startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;I)V
    .locals 9
    .param p1    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2    # I

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getScrimColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-ne v1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    :goto_2
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const v3, 0x7f0e002a

    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0xdc

    goto :goto_2
.end method

.method private updateScrimBehindDrawingMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScrimKeyguard()V
    .locals 8

    const/high16 v5, 0x3f400000

    const-wide v6, 0x3fe99999a0000000L

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v1, v4, v0

    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float v2, v1, v5

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    const v2, 0x3f0ccccd

    mul-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    const v2, 0x3eb33334

    mul-float/2addr v2, v1

    const v3, 0x3e4ccccd

    add-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method

.method private updateScrimNormal()V
    .locals 12

    const/4 v4, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    const v2, 0x3f99999a

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd

    sub-float v0, v2, v3

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L

    const-wide v4, 0x400921fa00000000L

    const/high16 v6, 0x3f800000

    sub-float/2addr v6, v0

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v4, v10, v4

    mul-double/2addr v2, v4

    sub-double v2, v10, v2

    double-to-float v1, v2

    const v2, 0x3f1eb852

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method

.method private updateScrims()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimNormal()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimKeyguard()V

    goto :goto_0
.end method


# virtual methods
.method public animateGoingToFullShade(JJ)V
    .locals 1
    .param p1    # J
    .param p3    # J

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public animateKeyguardFadingOut(JJLjava/lang/Runnable;)V
    .locals 1
    .param p1    # J
    .param p3    # J
    .param p5    # Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public isPulsing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExpandingFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackingStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setBackDropView(Lcom/android/systemui/statusbar/BackDropView;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/BackDropView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$7;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BackDropView;->setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->cancelPulsing()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    goto :goto_1
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    :cond_0
    return-void
.end method
