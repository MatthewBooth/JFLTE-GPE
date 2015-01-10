.class public Lcom/android/systemui/recents/views/SystemBarScrimViews;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mHasNavBarScrim:Z

.field mHasStatusBarScrim:Z

.field mNavBarScrimView:Landroid/view/View;

.field mShouldAnimateNavBarScrim:Z

.field mShouldAnimateStatusBarScrim:Z

.field mStatusBarScrimView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
    .param p2    # Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const v0, 0x7f0e00fb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    const v0, 0x7f0e00ff

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public prepareEnterRecentsAnimation()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->shouldAnimateNavBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->hasStatusBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->shouldAnimateStatusBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public startEnterRecentsAnimation()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/SystemBarScrimViews$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/SystemBarScrimViews$1;-><init>(Lcom/android/systemui/recents/views/SystemBarScrimViews;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/SystemBarScrimViews$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/SystemBarScrimViews$2;-><init>(Lcom/android/systemui/recents/views/SystemBarScrimViews;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public startExitRecentsAnimation()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method
