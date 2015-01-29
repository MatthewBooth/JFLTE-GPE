.class public Landroid/transition/SidePropagation;
.super Landroid/transition/VisibilityPropagation;
.source "SidePropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlidePropagation"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000

    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(IIIIIIII)I
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I

    const/4 v0, 0x0

    iget v1, p0, Landroid/transition/SidePropagation;->mSide:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    sub-int v1, p7, p1

    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    :sswitch_1
    sub-int v1, p8, p2

    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    :sswitch_2
    sub-int v1, p1, p5

    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    :sswitch_3
    sub-int v1, p2, p6

    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1    # Landroid/view/ViewGroup;

    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 22
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Landroid/transition/Transition;
    .param p3    # Landroid/transition/TransitionValues;
    .param p4    # Landroid/transition/TransitionValues;

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const-wide/16 v20, 0x0

    :goto_0
    return-wide v20

    :cond_0
    const/4 v11, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v16

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move-object/from16 v19, p3

    const/4 v11, -0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v4

    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v17, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v7, v2, v20

    const/4 v2, 0x1

    aget v2, v17, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v8, v2, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int v9, v7, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int v10, v8, v2

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    :goto_2
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/transition/SidePropagation;->distance(IIIIIIII)I

    move-result v2

    int-to-float v12, v2

    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v18, v0

    div-float v13, v12, v18

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v14

    const-wide/16 v20, 0x0

    cmp-long v2, v14, v20

    if-gez v2, :cond_2

    const-wide/16 v14, 0x12c

    :cond_2
    int-to-long v0, v11

    move-wide/from16 v20, v0

    mul-long v20, v20, v14

    move-wide/from16 v0, v20

    long-to-float v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    move/from16 v20, v0

    div-float v2, v2, v20

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v20, v0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v19, p4

    goto/16 :goto_1

    :cond_4
    add-int v2, v7, v9

    div-int/lit8 v5, v2, 0x2

    add-int v2, v8, v10

    div-int/lit8 v6, v2, 0x2

    goto :goto_2
.end method

.method public setPropagationSpeed(F)V
    .locals 2
    .param p1    # F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    return-void
.end method

.method public setSide(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method
