.class public Lcom/android/systemui/recent/FadedEdgeDrawHelper;
.super Ljava/lang/Object;
.source "FadedEdgeDrawHelper.java"


# instance fields
.field private mBlackPaint:Landroid/graphics/Paint;

.field private mFade:Landroid/graphics/LinearGradient;

.field private mFadeMatrix:Landroid/graphics/Matrix;

.field private mFadePaint:Landroid/graphics/Paint;

.field private mFadingEdgeLength:I

.field private mIsVertical:Z

.field private mScrollView:Landroid/view/View;

.field private mSoftwareRendered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # Landroid/view/View;
    .param p4    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    iput-object p3, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mScrollView:Landroid/view/View;

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadingEdgeLength:I

    iput-boolean p4, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/FadedEdgeDrawHelper;
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/util/AttributeSet;
    .param p2    # Landroid/view/View;
    .param p3    # Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addViewCallback(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->buildDrawingCache()V

    :cond_0
    return-void
.end method

.method public drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V
    .locals 19
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # F
    .param p9    # F
    .param p10    # F
    .param p11    # F
    .param p12    # I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    if-eqz v1, :cond_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    const/high16 v6, -0x34000000

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadingEdgeLength:I

    int-to-float v14, v1

    float-to-int v0, v14

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    if-eqz v1, :cond_2

    add-int v1, p4, v16

    sub-int v2, p5, v16

    if-le v1, v2, :cond_2

    sub-int v1, p5, p4

    div-int/lit8 v16, v1, 0x2

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    if-nez v1, :cond_3

    add-int v1, p2, v16

    sub-int v2, p3, v16

    if-le v1, v2, :cond_3

    sub-int v1, p3, p2

    div-int/lit8 v16, v1, 0x2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    move/from16 v0, p8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v18

    mul-float v1, v18, v14

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    const/4 v13, 0x1

    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    move/from16 v0, p9

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float v1, v9, v14

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    const/4 v10, 0x1

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    move/from16 v0, p10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v15

    mul-float v1, v15, v14

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    const/4 v11, 0x1

    :goto_2
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    move/from16 v0, p11

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v17

    mul-float v1, v17, v14

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    const/4 v12, 0x1

    :cond_5
    :goto_3
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000

    mul-float v3, v14, v18

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    add-int v1, p4, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mBlackPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mBlackPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    move/from16 v0, p2

    int-to-float v2, v0

    sub-int v1, p4, p12

    int-to-float v3, v1

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mBlackPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000

    mul-float v3, v14, v9

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, p2

    int-to-float v2, v0

    sub-int v1, p5, v16

    int-to-float v3, v1

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000

    mul-float v3, v14, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x3d4c0000

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    add-int v1, p2, v16

    int-to-float v4, v1

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000

    mul-float v3, v14, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sub-int v1, p3, v16

    int-to-float v2, v1

    move/from16 v0, p4

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_a
    return-void

    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_3
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public onAttachedToWindowCallback(Landroid/widget/LinearLayout;Z)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
    .param p2    # Z

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    iget-boolean v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
