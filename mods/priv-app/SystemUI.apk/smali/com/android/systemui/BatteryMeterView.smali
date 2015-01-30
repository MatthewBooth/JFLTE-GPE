.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$3;,
        Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;,
        Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;,
        Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;,
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;,
        Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mAttached:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

.field private mButtonHeightFraction:F

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mCriticalLevel:I

.field private mDemoMode:Z

.field protected mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private final mFrameColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private final mLock:Ljava/lang/Object;

.field protected mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPowerSaveEnabled:Z

.field private final mShapePath:Landroid/graphics/Path;

.field protected mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private final mTextPath:Landroid/graphics/Path;

.field protected mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v9, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    new-instance v6, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    new-instance v6, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/systemui/BatteryMeterView$2;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/BatteryMeterView$2;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mObserver:Landroid/database/ContentObserver;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v6, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mFrameColor:I

    const/high16 v6, 0x7f060000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v6, 0x7f0b0117

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0002

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0003

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0004

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadShowBatterySetting()V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    invoke-virtual {p0, v6}, Lcom/android/systemui/BatteryMeterView;->createBatteryMeterDrawable(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/BatteryMeterView;)F
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/BatteryMeterView;)F
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/BatteryMeterView;)I
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadShowBatterySetting()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/BatteryMeterView;)I
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mFrameColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/BatteryMeterView;)[I
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/BatteryMeterView;)I
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0
    .param p0    # Lcom/android/systemui/BatteryMeterView;
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/BatteryMeterView;)I
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0
    .param p0    # Lcom/android/systemui/BatteryMeterView;
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/BatteryMeterView;)F
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView;

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    return v0
.end method

.method private loadShowBatterySetting()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v6, "status_bar_show_battery_percent"

    invoke-static {v3, v6, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_0

    :goto_0
    const-string v6, "status_bar_battery_style"

    invoke-static {v3, v6, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setMode(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V

    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidateIfVisible()V

    return-void

    :cond_0
    move v4, v5

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    goto :goto_1

    :pswitch_2
    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_3
    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    goto :goto_1

    :pswitch_4
    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected createBatteryMeterDrawable(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;
    .locals 3
    .param p1    # Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/BatteryMeterView$3;->$SwitchMap$com$android$systemui$BatteryMeterView$BatteryMeterMode:[I

    invoke-virtual {p1}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;Z)V

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;Z)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;->onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColorForLevel(I)I
    .locals 5
    .param p1    # I

    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v0, v3, v4

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v3, v1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    if-le p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected invalidateIfVisible()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_battery_style"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_show_battery_percent"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v3, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne v2, v3, :cond_1

    int-to-float v2, v0

    const v3, 0x400aaaab

    add-float/2addr v2, v3

    float-to-int v0, v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/BatteryMeterView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v3, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1, v0, v4, v4}, Lcom/android/systemui/BatteryMeterView;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v3, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_0

    int-to-float v2, v0

    const v3, 0x3f99999a

    mul-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0
.end method

.method public onPowerSaveChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;->onSizeChanged(IIII)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    return-void
.end method

.method public setMode(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V
    .locals 4
    .param p1    # Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    :goto_1
    sget-object v1, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne p1, v1, :cond_3

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    invoke-interface {v1}, Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;->onDispose()V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->createBatteryMeterDrawable(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne v1, v2, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    check-cast v1, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # invokes: Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F
    invoke-static {v1, v2}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->access$400(Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;Landroid/content/res/Resources;)[F

    :cond_6
    iget-boolean v1, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->present:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->requestLayout()V

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    goto :goto_0
.end method
