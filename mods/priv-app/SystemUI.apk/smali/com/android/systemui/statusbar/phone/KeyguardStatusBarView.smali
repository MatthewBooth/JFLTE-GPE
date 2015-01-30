.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Lcom/android/systemui/BatteryLevelTextView;

.field private mBatteryListening:Z

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardUserSwitcherShowing:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mSystemIconsSwitcherHiddenExpandedMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private animateNextLayoutChange()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    return-void
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateUserSwitcher()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardMode(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Lcom/android/systemui/BatteryLevelTextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/BatteryLevelTextView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    const v0, 0x7f0e008e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v0, 0x7f0e0153

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryLevelTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Lcom/android/systemui/BatteryLevelTextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Lcom/android/systemui/BatteryLevelTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryLevelTextView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    return-void
.end method

.method public setKeyguardUserSwitcherShowing(ZZ)V
    .locals 0
    .param p1    # Z
    .param p2    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1    # I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    :cond_0
    return-void
.end method
