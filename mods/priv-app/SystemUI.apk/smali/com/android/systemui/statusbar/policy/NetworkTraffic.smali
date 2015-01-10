.class public Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# static fields
.field private static decimalFormat:Ljava/text/DecimalFormat;


# instance fields
.field private GB:I

.field private KB:I

.field private MB:I

.field private lastUpdateTime:J

.field private mAttached:Z

.field private mColorDown:I

.field private mColorIcon:I

.field private mColorUp:I

.field private mHideInactivity:Z

.field private mIconEnabled:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInterval:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mShouldStart:Z

.field private mState:I

.field private mTextEnabled:Z

.field private mTrafficHandler:Landroid/os/Handler;

.field private mUnit:I

.field private resolver:Landroid/content/ContentResolver;

.field private totalRxBytes:J

.field private totalTxBytes:J

.field private txtSizeMulti:I

.field private txtSizeSingle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeSingle:I

    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeMulti:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShouldStart:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeMulti:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeSingle:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mColorDown:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mHideInactivity:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/text/DecimalFormat;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShouldStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    return v0
.end method

.method static synthetic access$700(II)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mColorUp:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTextEnabled:Z

    return v0
.end method

.method private clearHandlerCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getConnectAvailable()Z
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getInterval()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mInterval:I

    return v0
.end method

.method private static isSet(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldStartUpdates()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShouldStart:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShouldStart:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTrafficUpdates()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    return-void
.end method

.method private updateSettings()V
    .locals 6

    const/16 v5, 0x3e8

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v3, "network_traffic_meter"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v3, "network_traffic_text"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTextEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v3, "network_traffic_icon"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v3, "network_traffic_hide"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mHideInactivity:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_unit"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mUnit:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_interval"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mInterval:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_color_up"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mColorUp:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_color_down"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mColorDown:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_color_icon"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mColorIcon:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mUnit:I

    if-ne v0, v1, :cond_3

    const/16 v0, 0x400

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateState()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    goto :goto_2
.end method

.method private updateState()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->shouldStartUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getConnectAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->startTrafficUpdates()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTrafficDrawable()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    packed-switch v3, :pswitch_data_0

    const v1, 0x7f0202f6

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mColorIcon:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    invoke-virtual {p0, v5, v5, v1, v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :pswitch_0
    const v1, 0x7f0202f6

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0202f6

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0202f5

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0202f7

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_meter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_hide"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_icon"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_interval"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_text"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_unit"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_color_up"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_color_down"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->resolver:Landroid/content/ContentResolver;

    const-string v2, "network_traffic_color_icon"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    :cond_0
    return-void
.end method
