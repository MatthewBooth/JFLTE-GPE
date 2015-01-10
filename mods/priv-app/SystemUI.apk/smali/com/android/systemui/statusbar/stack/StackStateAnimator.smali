.class public Lcom/android/systemui/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGoToFullShadeAppearingTranslation:I

.field public mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Set;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p1    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p1    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J
    .locals 19
    .param p1    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J

    move-result-wide v10

    :cond_0
    return-wide v10

    :cond_1
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v6, 0x50

    iget v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    sub-int v16, v14, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v16, 0x0

    const/16 v17, 0x2

    add-int/lit8 v18, v3, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v3

    rsub-int/lit8 v16, v3, 0x2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0

    :pswitch_1
    const-wide/16 v6, 0x20

    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v15

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    if-lt v14, v12, :cond_2

    add-int/lit8 v14, v14, 0x1

    :cond_2
    sub-int v16, v14, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v16, 0x0

    const/16 v17, 0x2

    add-int/lit8 v18, v3, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    iget-object v15, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J
    .locals 6
    .param p1    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    int-to-float v0, v1

    float-to-double v2, v0

    const-wide v4, 0x3fe6666660000000L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v1, 0x42400000

    mul-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method private cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 7
    .param p1    # J
    .param p3    # Landroid/animation/ValueAnimator;

    move-wide v0, p1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-wide v0
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I
    .locals 6
    .param p1    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    :goto_1
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/view/View;
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p0    # Lcom/android/systemui/statusbar/ExpandableView;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0e0005

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0e000b

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    goto :goto_0
.end method

.method private onAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 11
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    const/16 v10, 0x8

    const/high16 v9, 0x40000000

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v1, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    iget v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v6, :cond_3

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_1

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    const/high16 v4, -0x40800000

    if-eqz v5, :cond_5

    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v7

    int-to-float v8, v0

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    int-to-float v7, v0

    div-float v4, v6, v7

    const/high16 v6, 0x3f800000

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, -0x40800000

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_5
    const-wide/16 v6, 0x1d0

    new-instance v8, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v1, v6, v7, v4, v8}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JFLjava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3    # J
    .param p5    # J

    const v14, 0x7f0e000f

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const v14, 0x7f0e0009

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    const v14, 0x7f0e0003

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    const v14, 0x7f0e000f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e0009

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    :cond_2
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;F)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    const v14, 0x7f0e0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e000f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e0009

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;I)V
    .locals 33
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4    # I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v21

    if-nez v21, :cond_e

    const/16 v30, 0x1

    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    if-nez v30, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_f

    const/16 v31, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_10

    const/16 v32, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_11

    const/16 v27, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_12

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    if-eq v5, v6, :cond_13

    const/16 v23, 0x1

    :goto_5
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v6

    if-eq v5, v6, :cond_14

    const/16 v28, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v0, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    move/from16 v22, v0

    if-nez v31, :cond_1

    if-nez v32, :cond_1

    if-nez v27, :cond_1

    if-nez v20, :cond_1

    if-nez v23, :cond_1

    if-eqz v28, :cond_15

    :cond_1
    const/16 v24, 0x1

    :goto_7
    move/from16 v26, v29

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    if-eqz v22, :cond_2

    if-nez v24, :cond_3

    :cond_2
    if-eqz v29, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J

    move-result-wide v12

    add-long v10, v6, v12

    :cond_4
    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    const/16 v31, 0x1

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v6, v0

    const-wide v12, 0x3fe6666660000000L

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v25, v0

    const-wide/16 v6, 0x202

    const/high16 v5, 0x42c80000

    mul-float v5, v5, v25

    float-to-long v12, v5

    add-long v8, v6, v12

    :cond_5
    if-eqz v31, :cond_6

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-nez v5, :cond_16

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    :cond_6
    :goto_8
    if-eqz v32, :cond_7

    if-eqz v26, :cond_17

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    :cond_7
    :goto_9
    if-eqz v27, :cond_8

    if-eqz v26, :cond_18

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleX(F)V

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleY(F)V

    :cond_8
    :goto_a
    if-eqz v20, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_9

    if-eqz v26, :cond_19

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    :cond_9
    :goto_b
    if-eqz v23, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v26, :cond_1a

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    :cond_a
    :goto_c
    if-eqz v28, :cond_b

    if-eqz v26, :cond_1b

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    :cond_b
    :goto_d
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    if-eqz v5, :cond_1c

    if-nez v29, :cond_1c

    if-nez v26, :cond_1c

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    if-eqz v5, :cond_1d

    if-nez v26, :cond_1d

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZ)V

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    if-eqz v5, :cond_1e

    if-nez v29, :cond_1e

    if-nez v26, :cond_1e

    const/4 v15, 0x1

    :goto_10
    move-object/from16 v13, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJ)V

    :cond_c
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/systemui/statusbar/SpeedBumpView;

    if-eqz v5, :cond_d

    move-object/from16 v14, p1

    check-cast v14, Lcom/android/systemui/statusbar/SpeedBumpView;

    add-long v16, v10, v8

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v15, p2

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/statusbar/stack/StackScrollState;->performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V

    :cond_d
    return-void

    :cond_e
    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v31, 0x0

    goto/16 :goto_1

    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_2

    :cond_11
    const/16 v27, 0x0

    goto/16 :goto_3

    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_5

    :cond_14
    const/16 v28, 0x0

    goto/16 :goto_6

    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_7

    :cond_16
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startYTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_8

    :cond_17
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startZTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_9

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startScaleAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V

    goto/16 :goto_a

    :cond_19
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_b

    :cond_1a
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_d

    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_10
.end method

.method private startAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 15
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3    # J
    .param p5    # J

    const v12, 0x7f0e0011

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const v12, 0x7f0e000b

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const v12, 0x7f0e0005

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v12, :cond_2

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    const v12, 0x7f0e0011

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v12, 0x7f0e000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    const v12, 0x7f0e0005

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v12, 0x7f0e0011

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v12, 0x7f0e000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 15
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3    # J
    .param p5    # J

    const v12, 0x7f0e0010

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const v12, 0x7f0e000a

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const v12, 0x7f0e0004

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v12, :cond_2

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    const v12, 0x7f0e0010

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v12, 0x7f0e000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    const v12, 0x7f0e0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v12, 0x7f0e0010

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v12, 0x7f0e000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startScaleAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V
    .locals 21
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3    # J

    const v16, 0x7f0e000e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    const v16, 0x7f0e0008

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v7

    if-nez v16, :cond_0

    :goto_0
    return-void

    :cond_0
    const v16, 0x7f0e0002

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v14, v7, v16

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v16

    add-float v10, v16, v14

    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    const/16 v16, 0x1

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    const v16, 0x7f0e000e

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v16, 0x7f0e0008

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleY(F)V

    :cond_2
    sget-object v16, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    sget-object v16, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v6, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v16, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    const v16, 0x7f0e0002

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v16, 0x7f0e000e

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v16, 0x7f0e0008

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startYTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3    # J
    .param p5    # J

    const v14, 0x7f0e000c

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const v14, 0x7f0e0006

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v14, 0x7f0e0000

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    const v14, 0x7f0e000c

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e0006

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    const/high16 v14, 0x7f0e0000

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e000c

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e0006

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startZTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3    # J
    .param p5    # J

    const v14, 0x7f0e000d

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const v14, 0x7f0e0007

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    const v14, 0x7f0e0001

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    const v14, 0x7f0e000d

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e0007

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    const v14, 0x7f0e0001

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e000d

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0e0007

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 4
    .param p1    # F
    .param p2    # Z
    .param p3    # Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$13;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$13;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V
    .locals 7
    .param p2    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, v3, p2, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
