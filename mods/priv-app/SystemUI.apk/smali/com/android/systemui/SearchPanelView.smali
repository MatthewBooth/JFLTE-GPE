.class public Lcom/android/systemui/SearchPanelView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mCircle:Lcom/android/systemui/SearchPanelCircleView;

.field private final mContext:Landroid/content/Context;

.field private mDraggedFarEnough:Z

.field private mDragging:Z

.field private mHorizontal:Z

.field private mLaunchPending:Z

.field private mLaunching:Z

.field private mLogo:Landroid/widget/ImageView;

.field private mScrim:Landroid/view/View;

.field private mStartDrag:F

.field private mStartTouch:F

.field private mThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/SearchPanelView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelView;->mThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/SearchPanelCircleView;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startExitAnimation()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/SearchPanelView;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mLaunching:Z

    return p1
.end method

.method private maybeSwapSearchIcon()V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mLogo:Landroid/widget/ImageView;

    const-string v3, "com.android.systemui.action_assist_icon"

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/systemui/SearchPanelView;->replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mLogo:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private startAbortAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    new-instance v1, Lcom/android/systemui/SearchPanelView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelView$2;-><init>(Lcom/android/systemui/SearchPanelView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->startAbortAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->setAnimatingOut(Z)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startAssistActivity()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f050025

    const v5, 0x7f050026

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Lcom/android/systemui/SearchPanelView$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/SearchPanelView$1;-><init>(Lcom/android/systemui/SearchPanelView;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SearchPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startEnterAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelCircleView;->startEnterAnimation()V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startExitAnimation()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mLaunchPending:Z

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mLaunching:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelView;->mLaunching:Z

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startAssistActivity()V

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->setAnimatingOut(Z)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    new-instance v1, Lcom/android/systemui/SearchPanelView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelView$4;-><init>(Lcom/android/systemui/SearchPanelView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->startExitAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private vibrate()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const v3, 0x7f090005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Lcom/android/systemui/SearchPanelView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isAssistantAvailable()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelCircleView;->isAnimatingOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0e0137

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SearchPanelCircleView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    const v0, 0x7f0e0138

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mLogo:Landroid/widget/ImageView;

    const v0, 0x7f0e0136

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mScrim:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mLaunching:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mLaunchPending:Z

    if-eqz v3, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mHorizontal:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_1
    iput v3, p0, Lcom/android/systemui/SearchPanelView;->mStartTouch:F

    iput-boolean v5, p0, Lcom/android/systemui/SearchPanelView;->mDragging:Z

    iput-boolean v5, p0, Lcom/android/systemui/SearchPanelView;->mDraggedFarEnough:Z

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelCircleView;->reset()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    goto :goto_1

    :pswitch_1
    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mHorizontal:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mDragging:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/SearchPanelCircleView;->isAnimationRunning(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/SearchPanelView;->mStartTouch:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/android/systemui/SearchPanelView;->mThreshold:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    :cond_4
    iput v1, p0, Lcom/android/systemui/SearchPanelView;->mStartDrag:F

    iput-boolean v4, p0, Lcom/android/systemui/SearchPanelView;->mDragging:Z

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mDragging:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/SearchPanelView;->mStartDrag:F

    sub-float/2addr v3, v1

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/SearchPanelCircleView;->setDragDistance(F)V

    iget v3, p0, Lcom/android/systemui/SearchPanelView;->mStartTouch:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/android/systemui/SearchPanelView;->mThreshold:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mDraggedFarEnough:Z

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    iget-boolean v5, p0, Lcom/android/systemui/SearchPanelView;->mDraggedFarEnough:Z

    invoke-virtual {v3, v5}, Lcom/android/systemui/SearchPanelCircleView;->setDraggedFarEnough(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_2

    :cond_7
    move v3, v5

    goto :goto_3

    :pswitch_2
    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mDraggedFarEnough:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/SearchPanelCircleView;->isAnimationRunning(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    iput-boolean v4, p0, Lcom/android/systemui/SearchPanelView;->mLaunchPending:Z

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/SearchPanelCircleView;->setAnimatingOut(Z)V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    new-instance v5, Lcom/android/systemui/SearchPanelView$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/SearchPanelView$3;-><init>(Lcom/android/systemui/SearchPanelView;)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/SearchPanelCircleView;->performOnAnimationFinished(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startExitAnimation()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startAbortAnimation()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/widget/ImageView;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Ljava/lang/String;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x80

    invoke-virtual {v4, p2, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v6, "SearchPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to swap drawable; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v6, "SearchPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to swap drawable from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-void
.end method

.method public setHorizontal(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mHorizontal:Z

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SearchPanelCircleView;->setHorizontal(Z)V

    return-void
.end method

.method public show(ZZ)V
    .locals 3
    .param p1    # Z
    .param p2    # Z

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->maybeSwapSearchIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startEnterAnimation()V

    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/SearchPanelView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/SearchPanelView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->requestFocus()Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mScrim:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startAbortAnimation()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto :goto_1
.end method
