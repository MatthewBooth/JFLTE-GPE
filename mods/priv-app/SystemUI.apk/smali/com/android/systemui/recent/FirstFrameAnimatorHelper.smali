.class public Lcom/android/systemui/recent/FirstFrameAnimatorHelper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private static sGlobalFrameCounter:J


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/ViewPropertyAnimator;
    .param p2    # Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    iput-object p2, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic access$008()J
    .locals 4

    sget-wide v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    return-wide v0
.end method

.method public static initializeDrawListener(Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/view/View;

    sget-object v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;

    invoke-direct {v0}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;-><init>()V

    sput-object v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    sget-wide v4, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartFrame:J

    iput-wide v0, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    sget-wide v4, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v6, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_1
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    :cond_2
    return-void

    :cond_3
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    iget-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v4, :cond_4

    iget-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    const-wide/16 v4, 0x10

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;-><init>(Lcom/android/systemui/recent/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
