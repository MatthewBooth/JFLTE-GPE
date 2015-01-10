.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.super Ljava/lang/Object;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private final mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

.field private mBgAnimator:Landroid/animation/ObjectAnimator;

.field public final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private final mUserSwitcher:Landroid/view/ViewGroup;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/ViewStub;
    .param p3    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .param p4    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p5    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-direct {v0, p1, p5}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    const-wide/16 v2, 0x190

    const/high16 v4, -0x41000000

    const/high16 v5, 0x3f000000

    const v1, 0x10c000d

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Landroid/view/ViewGroup;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
    .param p1    # Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->refresh()V

    return-void
.end method

.method private cancelAnimations()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method private refresh()V
    .locals 9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getCount()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    if-ge v3, v1, :cond_3

    const/4 v6, 0x0

    if-ge v3, v2, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3, v6, v8}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v6, v5, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private shouldExpandByDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAppearAnimation()V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/keyguard/AppearAnimationUtils;->startAppearAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private startDisappearAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startDisappearAnimation()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyguard(ZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->shouldExpandByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startAppearAnimation()V

    :cond_0
    return-void
.end method
