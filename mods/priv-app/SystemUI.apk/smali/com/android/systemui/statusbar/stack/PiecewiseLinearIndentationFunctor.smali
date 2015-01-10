.class public Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;
.super Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;
.source "PiecewiseLinearIndentationFunctor.java"


# instance fields
.field private final mBaseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mLinearPart:F


# direct methods
.method constructor <init>(IIIF)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # F

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;-><init>(III)V

    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->initBaseValues()V

    iput p4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mLinearPart:F

    return-void
.end method

.method private getSumOfSquares(I)I
    .locals 2
    .param p1    # I

    add-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, p1

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private initBaseValues()V
    .locals 6

    iget v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->getSumOfSquares(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    int-to-float v4, v2

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getValue(F)F
    .locals 7
    .param p1    # F

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mStackStartsAtPeek:Z

    if-eqz v4, :cond_0

    add-float/2addr p1, v6

    :cond_0
    cmpg-float v4, p1, v3

    if-gez v4, :cond_1

    :goto_0
    return v3

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mTotalTransitionDistance:I

    int-to-float v3, v4

    goto :goto_0

    :cond_2
    float-to-int v0, p1

    int-to-float v4, v0

    sub-float v1, p1, v4

    if-nez v0, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mDistanceToPeekStart:I

    int-to-float v4, v4

    mul-float v3, v4, v1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mDistanceToPeekStart:I

    int-to-float v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v5, v6, v1

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v1

    add-float v2, v5, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mLinearPart:F

    sub-float v4, v6, v4

    mul-float/2addr v4, v2

    sub-float v5, p1, v6

    iget v6, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mLinearPart:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mPeekSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    goto :goto_0
.end method
