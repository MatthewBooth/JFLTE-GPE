.class public Lcom/android/contacts/common/widget/FloatingActionButtonController;
.super Ljava/lang/Object;
.source "FloatingActionButtonController.java"


# instance fields
.field private final mAnimationDuration:I

.field private final mFabInterpolator:Landroid/view/animation/Interpolator;

.field private final mFloatingActionButton:Landroid/view/View;

.field private final mFloatingActionButtonContainer:Landroid/view/View;

.field private final mFloatingActionButtonMarginRight:I

.field private final mFloatingActionButtonWidth:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFabInterpolator:Landroid/view/animation/Interpolator;

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonWidth:I

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonMarginRight:I

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    iput-object p2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    iput-object p3, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/contacts/common/util/ViewUtil;->setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V

    return-void
.end method

.method private isLayoutRtl()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public align(IIIZ)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->getTranslationXForAlignment(I)I

    move-result v0

    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    add-int v2, v0, p2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFabInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    add-int v2, v0, p2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    int-to-float v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public getTranslationXForAlignment(I)I
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, -0x1

    :cond_0
    move v1, v0

    :goto_1
    return v1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    div-int/lit8 v0, v1, 0x4

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonMarginRight:I

    sub-int v0, v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(F)V
    .locals 2
    .param p1    # F

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->getTranslationXForAlignment(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public resize(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-static {v0, p1, p1}, Lcom/android/phone/common/animation/AnimUtils;->changeDimensions(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public scaleIn(I)V
    .locals 4
    .param p1    # I

    const/16 v3, 0x10a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-static {v0, v3, p1}, Lcom/android/phone/common/animation/AnimUtils;->scaleIn(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/view/View;

    add-int/lit8 v1, p1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public scaleOut()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->scaleOut(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/view/View;

    const/16 v1, 0x42

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1    # Z

    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
