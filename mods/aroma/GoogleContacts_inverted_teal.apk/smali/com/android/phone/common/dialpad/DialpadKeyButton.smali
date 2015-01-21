.class public Lcom/android/phone/common/dialpad/DialpadKeyButton;
.super Landroid/widget/FrameLayout;
.source "DialpadKeyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;
    }
.end annotation


# static fields
.field private static final LONG_HOVER_TIMEOUT:I


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBackupContentDesc:Ljava/lang/CharSequence;

.field private mHoverBounds:Landroid/graphics/Rect;

.field private mLongHoverContentDesc:Ljava/lang/CharSequence;

.field private mLongHoverRunnable:Ljava/lang/Runnable;

.field private mLongHovered:Z

.field private mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

.field private mWasClickable:Z

.field private mWasLongClickable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->initForAccessibility(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->initForAccessibility(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/common/dialpad/DialpadKeyButton;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Ljava/lang/CharSequence;
    .locals 1
    .param p0    # Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private cancelLongHover()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method private initForAccessibility(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private setLongHovered(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private simulateClickForAccessibility()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasClickable:Z

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;

    invoke-direct {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;-><init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->performLongClick()Z

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->cancelLongHover()V

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLongHoverContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
