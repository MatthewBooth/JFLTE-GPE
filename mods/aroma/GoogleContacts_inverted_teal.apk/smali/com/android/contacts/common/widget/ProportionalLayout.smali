.class public Lcom/android/contacts/common/widget/ProportionalLayout;
.super Landroid/view/ViewGroup;
.source "ProportionalLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
    }
.end annotation


# instance fields
.field private mDirection:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    sget-object v1, Lcom/android/contacts/common/R$styleable;->ProportionalLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->parse(Ljava/lang/String;)Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mDirection:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mRatio:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ProportionalLayout requires exactly one child"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1    # I
    .param p2    # I

    const/high16 v7, 0x40000000

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ProportionalLayout requires exactly one child"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v5, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mDirection:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    sget-object v6, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->heightToWidth:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    if-ne v5, v6, :cond_1

    int-to-float v5, v1

    iget v6, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mRatio:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v1

    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/contacts/common/widget/ProportionalLayout;->measureChild(Landroid/view/View;II)V

    invoke-static {v4, p1}, Lcom/android/contacts/common/widget/ProportionalLayout;->resolveSize(II)I

    move-result v5

    invoke-static {v3, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/common/widget/ProportionalLayout;->setMeasuredDimension(II)V

    return-void

    :cond_1
    move v4, v2

    int-to-float v5, v2

    iget v6, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mRatio:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0
.end method
