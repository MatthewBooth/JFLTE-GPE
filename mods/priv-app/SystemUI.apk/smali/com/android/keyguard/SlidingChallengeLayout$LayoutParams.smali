.class public Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public childType:I

.field public maxHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    sget-object v1, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout_layout_childType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    sget v1, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout_layout_maxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    iget v0, p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    return-void
.end method
