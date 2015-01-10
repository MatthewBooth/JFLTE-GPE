.class public Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MultiPaneChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public centerWithinArea:F

.field public childType:I

.field public gravity:I

.field public maxHeight:I

.field public maxWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/MultiPaneChallengeLayout;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # Lcom/android/keyguard/MultiPaneChallengeLayout;

    const/4 v5, 0x0

    const/16 v4, 0x51

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    sget-object v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout_layout_centerWithinArea:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    sget v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout_layout_childType:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    sget v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout_layout_gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    sget v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout_layout_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    sget v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout_layout_maxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    if-nez v1, :cond_0

    iget v1, p3, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_0
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_2
    iput v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x31

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_4
    iput v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_5
    iput v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    return-void
.end method
