.class public Lcom/android/keyguard/MultiPaneChallengeLayout;
.super Landroid/view/ViewGroup;
.source "MultiPaneChallengeLayout.java"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsBouncing:Z

.field final mOrientation:I

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUserSwitcherView:Landroid/view/View;

.field private final mZeroPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/keyguard/MultiPaneChallengeLayout$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$1;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    sget-object v2, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_android_orientation:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v2, 0x300

    invoke-virtual {p0, v2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setSystemUiVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MultiPaneChallengeLayout;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/keyguard/MultiPaneChallengeLayout;

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method private getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I
    .locals 4
    .param p1    # Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    .param p2    # I
    .param p3    # I

    move v1, p2

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    :cond_0
    iget v2, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    sub-int p2, v1, p3

    :cond_1
    :goto_0
    return p2

    :cond_2
    iget v2, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    sub-int v2, v1, p3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method private layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 23
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/view/View;
    .param p4    # Landroid/graphics/Rect;
    .param p5    # Z

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v22

    sub-int v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result p2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getLayoutDirection()I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    const/4 v9, 0x1

    :goto_0
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    const/4 v8, 0x1

    :goto_1
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    :goto_2
    if-eqz v8, :cond_5

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v18, v21, v22

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v4, v0

    move/from16 v3, p2

    :goto_3
    invoke-static {v11}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v14

    invoke-static {v11}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v19, v15, v7

    add-int v5, v20, v6

    and-int/lit8 v21, v11, 0x70

    sparse-switch v21, :sswitch_data_0

    :cond_0
    :goto_4
    and-int/lit8 v21, v11, 0x7

    packed-switch v21, :pswitch_data_0

    :cond_1
    :goto_5
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v5, v5, v21

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v21

    sub-int v21, p2, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v22

    sub-int v17, v21, v22

    move/from16 v4, p1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v3, v0

    goto :goto_3

    :cond_6
    move/from16 v4, p1

    move/from16 v3, p2

    goto :goto_3

    :sswitch_0
    if-eqz v10, :cond_7

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v22, v3, v6

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    :goto_6
    add-int v5, v20, v6

    if-eqz p5, :cond_0

    if-eqz v14, :cond_0

    move-object/from16 v0, p4

    iput v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    div-int/lit8 v22, v6, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    goto :goto_6

    :sswitch_1
    if-eqz v10, :cond_8

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, p2

    sub-int v22, v3, v6

    div-int/lit8 v22, v22, 0x2

    sub-int v5, v21, v22

    :goto_7
    sub-int v20, v5, v6

    if-eqz p5, :cond_0

    if-eqz v14, :cond_0

    sub-int v21, p2, v20

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    div-int/lit8 v22, v6, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v5, v21, p2

    goto :goto_7

    :sswitch_2
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v22, p2, v6

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    add-int v5, v20, v6

    goto/16 :goto_4

    :pswitch_1
    if-eqz v8, :cond_9

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v22, v4, v7

    div-int/lit8 v22, v22, 0x2

    add-int v15, v21, v22

    :goto_8
    add-int v19, v15, v7

    if-eqz p5, :cond_1

    if-eqz v13, :cond_1

    if-nez v14, :cond_1

    move/from16 v0, v19

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    div-int/lit8 v22, v7, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    goto :goto_8

    :pswitch_2
    if-eqz v8, :cond_a

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    sub-int v22, v4, v7

    div-int/lit8 v22, v22, 0x2

    sub-int v19, v21, v22

    :goto_9
    sub-int v15, v19, v7

    if-eqz p5, :cond_1

    if-eqz v13, :cond_1

    if-nez v14, :cond_1

    sub-int v21, p1, v15

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    div-int/lit8 v22, v7, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v19, p1, v21

    goto :goto_9

    :pswitch_3
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v18, v21, v22

    sub-int v21, v18, v7

    div-int/lit8 v15, v21, 0x2

    add-int v19, v15, v7

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBouncerAnimationDuration()I
    .locals 1

    const/16 v0, 0x15e

    return v0
.end method

.method public hideBouncer()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0x15e

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/keyguard/MultiPaneChallengeLayout$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$3;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method

.method public isBouncing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChallengeShowing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget-object v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingLeft()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingRight()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, p2

    sub-int v12, p5, p3

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v12, v0

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v3

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildCount()I

    move-result v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_5

    invoke-virtual {p0, v13}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eq v8, v0, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-ne v8, v0, :cond_3

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v1, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_3
    iget v0, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    const/4 v10, 0x0

    move-object v5, p0

    move v6, v1

    move v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1    # I
    .param p2    # I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000

    if-ne v2, v5, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000

    if-eq v2, v5, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "MultiPaneChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v9, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v2, v5

    const/high16 v2, 0x40000000

    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildCount()I

    move-result v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type challenge"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    instance-of v2, v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    check-cast v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type userSwitcher"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_4

    move/from16 v4, p1

    move v6, v13

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_7

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :cond_7
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_8

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_8
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-eqz v2, :cond_9

    int-to-float v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v10, v2

    goto :goto_1

    :cond_9
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v17, v0

    goto :goto_1

    :cond_a
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setScrimView(Landroid/view/View;)V

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_c

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_d

    :cond_c
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v10}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result v15

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v2, :cond_10

    sub-int v2, v16, v17

    int-to-float v2, v2

    iget v5, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v2, 0x40000000

    invoke-static {v15, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_4
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_e

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :cond_e
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_f

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_f
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_3

    :cond_10
    sub-int v2, v16, v17

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    int-to-float v2, v15

    iget v5, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    :cond_11
    sub-int v2, v16, v17

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v2, 0x40000000

    invoke-static {v15, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    :cond_12
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->hideBouncer()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public showBouncer()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0x15e

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/keyguard/MultiPaneChallengeLayout$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$2;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method
