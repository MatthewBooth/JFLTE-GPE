.class public Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
    }
.end annotation


# static fields
.field private static decimalFormat:Ljava/text/DecimalFormat;


# instance fields
.field private GB:I

.field private KB:I

.field private MB:I

.field private lastUpdateTime:J

.field private mAttached:Z

.field private mAutoHide:Z

.field private mAutoHideThreshold:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;

.field private mShowIcon:Z

.field private mShowText:Z

.field private mState:I

.field private mTrafficHandler:Landroid/os/Handler;

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
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0115

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeSingle:I

    const v3, 0x7f0c0116

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeMulti:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->observe()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/text/DecimalFormat;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHide:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0    # I

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getInterval(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    return v0
.end method

.method static synthetic access$600(II)Z
    .locals 1
    .param p0    # I
    .param p1    # I

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShowText:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeMulti:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeSingle:I

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

.method private static getInterval(I)I
    .locals 2
    .param p0    # I

    ushr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fee

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method private static isSet(II)Z
    .locals 1
    .param p0    # I
    .param p1    # I

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    const/4 v5, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_traffic_autohide"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHide:Z

    const-string v1, "network_traffic_autohide_threshold"

    const/16 v4, 0xa

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    const-string v1, "network_traffic_show_icon"

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShowIcon:Z

    const-string v1, "network_traffic_show_text"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShowText:Z

    const-string v1, "network_traffic_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x400

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v1, v4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    mul-int/2addr v1, v4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getConnectAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    :goto_4
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateTrafficDrawable()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShowIcon:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0202f7

    :goto_0
    invoke-virtual {p0, v3, v3, v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0202f6

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0202f5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    :cond_0
    return-void
.end method
