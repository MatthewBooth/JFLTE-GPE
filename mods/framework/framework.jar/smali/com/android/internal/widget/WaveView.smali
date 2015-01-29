.class public Lcom/android/internal/widget/WaveView;
.super Landroid/view/View;
.source "WaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/WaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELAY_INCREMENT:J = 0xfL

.field private static final DELAY_INCREMENT2:J = 0xcL

.field private static final DURATION:J = 0x12cL

.field private static final FINAL_DELAY:J = 0xc8L

.field private static final FINAL_DURATION:J = 0xc8L

.field private static final GRAB_HANDLE_RADIUS_SCALE_ACCESSIBILITY_DISABLED:F = 0.5f

.field private static final GRAB_HANDLE_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.0f

.field private static final RESET_TIMEOUT:J = 0xbb8L

.field private static final RING_DELAY:J = 0x514L

.field private static final SHORT_DELAY:J = 0x64L

.field private static final STATE_ATTEMPTING:I = 0x3

.field private static final STATE_READY:I = 0x1

.field private static final STATE_RESET_LOCK:I = 0x0

.field private static final STATE_START_ATTEMPT:I = 0x2

.field private static final STATE_UNLOCK_ATTEMPT:I = 0x4

.field private static final STATE_UNLOCK_SUCCESS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WaveView"

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WAVE_COUNT:I = 0x14

.field private static final WAVE_DELAY:J = 0x64L

.field private static final WAVE_DURATION:J = 0x7d0L


# instance fields
.field private final mAddWaveAction:Ljava/lang/Runnable;

.field private mCurrentWave:I

.field private mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DrawableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerDown:Z

.field private mFinishWaves:Z

.field private mGrabbedState:I

.field private mLightWaves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DrawableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLockCenterX:F

.field private mLockCenterY:F

.field private mLockState:I

.field private final mLockTimerActions:Ljava/lang/Runnable;

.field private mMouseX:F

.field private mMouseY:F

.field private mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

.field private mRingRadius:F

.field private mSnapRadius:I

.field private mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

.field private mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

.field private mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCount:I

.field private mWaveTimerDelay:J

.field private mWavesRunning:Z


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

    sput-object v0, Lcom/android/internal/widget/WaveView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/16 v3, 0x14

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    const/high16 v0, 0x43360000

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    const/16 v0, 0x88

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    iput v2, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    iput v2, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    iput v2, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    new-instance v0, Lcom/android/internal/widget/WaveView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/WaveView$1;-><init>(Lcom/android/internal/widget/WaveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/widget/WaveView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/WaveView$2;-><init>(Lcom/android/internal/widget/WaveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->initDrawables()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/WaveView;I)I
    .locals 0
    .param p0    # Lcom/android/internal/widget/WaveView;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/WaveView;)Z
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget-boolean v0, p0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/WaveView;Z)Z
    .locals 0
    .param p0    # Lcom/android/internal/widget/WaveView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/WaveView;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/WaveView;)J
    .locals 2
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/WaveView;J)J
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide p1
.end method

.method static synthetic access$614(Lcom/android/internal/widget/WaveView;J)J
    .locals 3
    .param p0    # Lcom/android/internal/widget/WaveView;
    .param p1    # J

    iget-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/WaveView;I)I
    .locals 0
    .param p0    # Lcom/android/internal/widget/WaveView;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/WaveView;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .param p0    # Lcom/android/internal/widget/WaveView;

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    return v0
.end method

.method private announceUnlockHandle()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    const v1, 0x1040592

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1    # I

    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WaveView;->vibrate(J)V

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/WaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private getScaledGrabHandleRadius()F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private initDrawables()V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x3dcccccd

    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080757

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080755

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080756

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x1080758

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    if-ge v1, v3, :cond_0

    new-instance v0, Lcom/android/internal/widget/DrawableHolder;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1    # I

    iget v0, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/WaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/DrawableHolder;->getX()F

    move-result v4

    sub-float v1, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/DrawableHolder;->getY()F

    move-result v4

    sub-float v2, v3, v4

    float-to-double v4, v1

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->getScaledGrabHandleRadius()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/internal/widget/WaveView;->setGrabbedState(I)V

    iget v3, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->announceUnlockHandle()V

    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5
    .param p1    # J

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/internal/widget/WaveView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private waveUpdateFrame(FFZ)V
    .locals 38
    .param p1    # F
    .param p2    # F
    .param p3    # Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    sub-float v4, p1, v4

    float-to-double v0, v4

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    sub-float v4, p2, v4

    float-to-double v0, v4

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v36

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    float-to-double v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    float-to-double v12, v4

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    double-to-float v11, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    float-to-double v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    float-to-double v12, v4

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    double-to-float v0, v6

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :pswitch_0
    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    const/16 v29, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    :cond_0
    const/16 v29, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "x"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "y"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "scaleX"

    const v11, 0x3dcccccd

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "scaleY"

    const v11, 0x3dcccccd

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "alpha"

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "y"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "scaleX"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "scaleY"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "alpha"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleX"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleY"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "y"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "scaleX"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "scaleY"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "alpha"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "x"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "y"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleX"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleY"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    :pswitch_1
    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "y"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "scaleX"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "scaleY"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "alpha"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    const/high16 v7, 0x43360000

    add-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleX"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleY"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "scaleX"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "scaleY"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "alpha"

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    if-le v2, v4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "x"

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-string/jumbo v18, "y"

    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "scaleX"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "scaleY"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "alpha"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "x"

    const/16 v28, 0x1

    move/from16 v27, p1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "y"

    const/16 v28, 0x1

    move/from16 v27, p2

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "scaleX"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "scaleY"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "alpha"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    if-le v2, v4, :cond_7

    const/16 v34, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v34

    if-ge v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x3e8

    add-int/lit8 v4, v34, 0x6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    sub-int/2addr v4, v10

    int-to-long v12, v4

    mul-long/2addr v6, v12

    const-wide/16 v12, 0xa

    div-long v8, v6, v12

    const-wide/16 v6, 0xc8

    const-string/jumbo v10, "x"

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xc8

    const-string/jumbo v18, "y"

    const/16 v20, 0x1

    move-object v13, v5

    move-wide/from16 v16, v8

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    const-wide/16 v22, 0xc8

    const-string/jumbo v26, "scaleX"

    const v27, 0x3dcccccd

    const/16 v28, 0x1

    move-object/from16 v21, v5

    move-wide/from16 v24, v8

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    const-wide/16 v22, 0xc8

    const-string/jumbo v26, "scaleY"

    const v27, 0x3dcccccd

    const/16 v28, 0x1

    move-object/from16 v21, v5

    move-wide/from16 v24, v8

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    const-wide/16 v22, 0xc8

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v21, v5

    move-wide/from16 v24, v8

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    :cond_5
    const/16 v29, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "x"

    const/16 v28, 0x0

    move/from16 v27, v11

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v14, 0xc8

    const-wide/16 v16, 0x0

    const-string/jumbo v18, "y"

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "scaleX"

    const v27, 0x3dcccccd

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "scaleY"

    const v27, 0x3dcccccd

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "y"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "scaleX"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v6, "scaleY"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "alpha"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "x"

    const/16 v28, 0x1

    move/from16 v27, v11

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v14, 0xc8

    const-wide/16 v16, 0x0

    const-string/jumbo v18, "y"

    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "scaleX"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "scaleY"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "alpha"

    const/high16 v27, 0x3f800000

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string/jumbo v26, "scaleX"

    const/high16 v27, 0x40400000

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string/jumbo v26, "scaleY"

    const/high16 v27, 0x40400000

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string/jumbo v26, "x"

    const/16 v28, 0x0

    move/from16 v27, v11

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v14, 0xc8

    const-wide/16 v16, 0x0

    const-string/jumbo v18, "y"

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string/jumbo v26, "scaleX"

    const/high16 v27, 0x40400000

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string/jumbo v26, "scaleY"

    const/high16 v27, 0x40400000

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/WaveView;->dispatchTriggerEvent(I)V

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    iget v1, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget v2, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-boolean v3, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/WaveView;->waveUpdateFrame(FFZ)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DrawableHolder;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DrawableHolder;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1    # I
    .param p2    # I

    const/high16 v8, 0x40000000

    const/high16 v7, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v4, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ne v1, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/WaveView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    if-ne v4, v8, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v3

    goto :goto_0

    :cond_2
    if-ne v1, v8, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumHeight()I

    move-result v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/high16 v1, 0x3f000000

    int-to-float v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    int-to-float v0, p2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    if-eqz v1, :cond_0

    :goto_1
    return v2

    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v2, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, p1}, Lcom/android/internal/widget/WaveView;->tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/WaveView;->tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    iput-boolean v6, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, v6}, Lcom/android/internal/widget/WaveView;->setGrabbedState(I)V

    iget v3, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-boolean v5, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/WaveView;->waveUpdateFrame(FFZ)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    iput-boolean v6, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V
    .locals 0
    .param p1    # Lcom/android/internal/widget/WaveView$OnTriggerListener;

    iput-object p1, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    return-void
.end method
