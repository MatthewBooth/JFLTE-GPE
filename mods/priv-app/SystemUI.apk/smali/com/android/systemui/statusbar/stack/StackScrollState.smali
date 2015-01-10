.class public Lcom/android/systemui/statusbar/stack/StackScrollState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    }
.end annotation


# instance fields
.field private final mClearAllTopPadding:I

.field private final mClipRect:Landroid/graphics/Rect;

.field private final mHostView:Landroid/view/ViewGroup;

.field private mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClipRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    return-void
.end method

.method private getNextChildNotGone(I)Landroid/view/View;
    .locals 5
    .param p1    # I

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateChildClip(Landroid/view/View;II)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClipRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, p3, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v25

    if-ge v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    if-nez v29, :cond_1

    const-string v4, "StackScrollStateNoSuchChild"

    const-string v5, "No child state was found when applying this state to the hostView"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v32

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v31

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v33

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v28

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    move/from16 v17, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move/from16 v23, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    move/from16 v24, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move/from16 v21, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    move/from16 v18, v0

    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-nez v4, :cond_a

    const/4 v11, 0x1

    :goto_2
    cmpl-float v4, v2, v17

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    cmpl-float v4, v31, v4

    if-nez v4, :cond_3

    const/high16 v4, 0x3f800000

    cmpl-float v4, v17, v4

    if-nez v4, :cond_b

    const/4 v10, 0x1

    :goto_3
    if-nez v11, :cond_c

    if-nez v10, :cond_c

    const/16 v20, 0x1

    :goto_4
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getLayerType()I

    move-result v16

    if-eqz v20, :cond_d

    const/16 v19, 0x2

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    if-nez v11, :cond_3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v27

    if-eqz v11, :cond_e

    const/16 v22, 0x4

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    :cond_4
    cmpl-float v4, v32, v23

    if-eqz v4, :cond_5

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    :cond_5
    cmpl-float v4, v33, v24

    if-eqz v4, :cond_6

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    :cond_6
    cmpl-float v4, v28, v21

    if-eqz v4, :cond_7

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleX(F)V

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleY(F)V

    :cond_7
    move/from16 v0, v18

    if-eq v14, v0, :cond_8

    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    :cond_8
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZ)V

    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v4

    int-to-float v0, v4

    move/from16 v26, v0

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    int-to-float v4, v4

    cmpl-float v4, v26, v4

    if-eqz v4, :cond_9

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    :cond_9
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->updateChildClip(Landroid/view/View;II)V

    instance-of v4, v3, Lcom/android/systemui/statusbar/SpeedBumpView;

    if-eqz v4, :cond_f

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/statusbar/SpeedBumpView;

    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    move v5, v15

    move-object/from16 v7, v29

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/stack/StackScrollState;->performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V

    goto/16 :goto_1

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_6

    :cond_f
    instance-of v4, v3, Lcom/android/systemui/statusbar/DismissView;

    if-eqz v4, :cond_12

    move-object v12, v3

    check-cast v12, Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    if-ge v4, v5, :cond_10

    const/16 v30, 0x1

    :goto_7
    if-eqz v30, :cond_11

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(Z)V

    goto/16 :goto_1

    :cond_10
    const/16 v30, 0x0

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    goto :goto_8

    :cond_12
    instance-of v4, v3, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v4, :cond_0

    move-object v13, v3

    check-cast v13, Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    if-gtz v4, :cond_13

    const/16 v30, 0x1

    :goto_9
    if-eqz v30, :cond_14

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    :goto_a
    invoke-virtual {v13, v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    goto/16 :goto_1

    :cond_13
    const/16 v30, 0x0

    goto :goto_9

    :cond_14
    const/4 v4, 0x0

    goto :goto_a

    :cond_15
    return-void
.end method

.method public getHostView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    return-object v0
.end method

.method public performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V
    .locals 6
    .param p1    # I
    .param p2    # Lcom/android/systemui/statusbar/SpeedBumpView;
    .param p3    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p4    # J

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getNextChildNotGone(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v4, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v5, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v0, v4, v5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v2

    iget v4, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p2, v3, p4, p5, v4}, Lcom/android/systemui/statusbar/SpeedBumpView;->animateDivider(ZJLjava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeViewStateForView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetViewStates()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    const/high16 v4, 0x3f800000

    iput v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method
