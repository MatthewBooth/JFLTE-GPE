.class public Lcom/android/dialer/widget/SearchEditTextLayout;
.super Landroid/widget/FrameLayout;
.source "SearchEditTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackButtonView:Landroid/view/View;

.field private mBottomMargin:I

.field private mClearButtonView:Landroid/view/View;

.field private mCollapsed:Landroid/view/View;

.field private mCollapsedElevation:F

.field private mCollapsedSearchBox:Landroid/view/View;

.field private mExpanded:Landroid/view/View;

.field private mExpandedSearchBox:Landroid/view/View;

.field protected mIsExpanded:Z

.field protected mIsFadedOut:Z

.field private mLeftMargin:I

.field private mOnBackButtonClickedListener:Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;

.field private mOverflowButtonView:Landroid/view/View;

.field private mPreImeKeyListener:Landroid/view/View$OnKeyListener;

.field private mRightMargin:I

.field private mSearchIcon:Landroid/view/View;

.field private mSearchView:Landroid/widget/EditText;

.field private mTopMargin:I

.field private mVoiceSearchButtonView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsExpanded:Z

    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/widget/SearchEditTextLayout;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/dialer/widget/SearchEditTextLayout;

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/widget/SearchEditTextLayout;)Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;
    .locals 1
    .param p0    # Lcom/android/dialer/widget/SearchEditTextLayout;

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mOnBackButtonClickedListener:Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/widget/SearchEditTextLayout;F)V
    .locals 0
    .param p0    # Lcom/android/dialer/widget/SearchEditTextLayout;
    .param p1    # F

    invoke-direct {p0, p1}, Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V

    return-void
.end method

.method private prepareAnimator(Z)V
    .locals 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/dialer/widget/SearchEditTextLayout$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$4;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setMargins(F)V
    .locals 2
    .param p1    # F

    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mTopMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mBottomMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mLeftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mRightMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->requestLayout()V

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 3
    .param p1    # Z

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedSearchBox:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mVoiceSearchButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mOverflowButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mBackButtonView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public collapse(Z)V
    .locals 4
    .param p1    # Z

    const/high16 v1, 0x3f800000

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->updateVisibility(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->crossFadeViews(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->prepareAnimator(Z)V

    :goto_0
    iput-boolean v3, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsExpanded:Z

    iget v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedElevation:F

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setElevation(F)V

    const v0, 0x7f0200e8

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setBackgroundResource(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/KeyEvent;

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mPreImeKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mPreImeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public expand(ZZ)V
    .locals 9
    .param p1    # Z
    .param p2    # Z

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v8}, Lcom/android/dialer/widget/SearchEditTextLayout;->updateVisibility(Z)V

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    const/16 v6, 0xc8

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/animation/AnimUtils;->crossFadeViews(Landroid/view/View;Landroid/view/View;I)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const v4, 0x3f4ccccd

    invoke-direct {p0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V

    invoke-direct {p0, v8}, Lcom/android/dialer/widget/SearchEditTextLayout;->prepareAnimator(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getPaddingEnd()I

    move-result v1

    const v4, 0x7f0200ea

    invoke-virtual {p0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->setBackgroundResource(I)V

    invoke-virtual {p0, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->setElevation(F)V

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setPaddingRelative(IIII)V

    invoke-virtual {p0, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->setElevation(F)V

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    iput-boolean v8, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsExpanded:Z

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/high16 v5, 0x3f800000

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V

    iget-object v4, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f4ccccd
        0x0
    .end array-data
.end method

.method public fadeIn()V
    .locals 1

    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return-void
.end method

.method public fadeOut(Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 1
    .param p1    # Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    const/16 v0, 0xc8

    invoke-static {p0, v0, p1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsExpanded:Z

    return v0
.end method

.method public isFadedOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    const v5, 0x7f0e0108

    const v4, 0x7f0e0106

    const v3, 0x7f0e0105

    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mTopMargin:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mBottomMargin:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mLeftMargin:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mRightMargin:I

    invoke-virtual {p0}, Lcom/android/dialer/widget/SearchEditTextLayout;->getElevation()F

    move-result v1

    iput v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedElevation:F

    const v1, 0x7f0e010a

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const v2, 0x7f0e0107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    const v1, 0x7f0e010b

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchIcon:Landroid/view/View;

    const v1, 0x7f0e010c

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mCollapsedSearchBox:Landroid/view/View;

    const v1, 0x7f0e010d

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mVoiceSearchButtonView:Landroid/view/View;

    const v1, 0x7f0e010e

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mOverflowButtonView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mBackButtonView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mExpandedSearchBox:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$1;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, v5}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$2;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/widget/SearchEditTextLayout$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/SearchEditTextLayout$3;-><init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public setOnBackButtonClickedListener(Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;)V
    .locals 0
    .param p1    # Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;

    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mOnBackButtonClickedListener:Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;

    return-void
.end method

.method public setPreImeKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mPreImeKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setAlpha(F)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout;->mIsFadedOut:Z

    goto :goto_0
.end method
