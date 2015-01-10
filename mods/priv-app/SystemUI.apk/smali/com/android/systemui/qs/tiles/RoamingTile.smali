.class public Lcom/android/systemui/qs/tiles/RoamingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RoamingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsForeignState:Z

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRoamingObserver:Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;

.field private roamingTileVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1    # Lcom/android/systemui/qs/QSTile$Host;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mListening:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mIsForeignState:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->roamingTileVisible:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/RoamingTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RoamingTile$1;-><init>(Lcom/android/systemui/qs/tiles/RoamingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;-><init>(Lcom/android/systemui/qs/tiles/RoamingTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mRoamingObserver:Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/RoamingTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/RoamingTile;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/RoamingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/RoamingTile;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/tiles/RoamingTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RoamingTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/RoamingTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/RoamingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/RoamingTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/RoamingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/RoamingTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/RoamingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/RoamingTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/RoamingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDataRoaming(I)Z
    .locals 5
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private isValidNumeric(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDataRoaming(ZI)V
    .locals 6
    .param p1    # Z
    .param p2    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_roaming"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_roaming"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_roaming"

    if-eqz p1, :cond_4

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private setEnabled(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/RoamingTile;->setDataRoaming(ZI)V

    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/RoamingTile;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2    # Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/RoamingTile;->getDataRoaming(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->roamingTileVisible:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RoamingTile;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f020087

    iput v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f020086

    iput v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSTile$State;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RoamingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RoamingTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onRoamingVisibleChanged()V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v0, "460"

    const-string v1, "455"

    const-string v4, ""

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v10, :cond_2

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    if-lt v6, v10, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    aget-wide v8, v5, v7

    invoke-virtual {v6, v8, v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/RoamingTile;->isValidNumeric(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v6, "460"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "455"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mIsForeignState:Z

    if-eq v2, v6, :cond_1

    if-eqz v2, :cond_6

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->roamingTileVisible:Z

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RoamingTile;->refreshState()V

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mIsForeignState:Z

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v7, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->roamingTileVisible:Z

    goto :goto_3
.end method

.method public setListening(Z)V
    .locals 3
    .param p1    # Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mListening:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mRoamingObserver:Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->startObserving()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mRoamingObserver:Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->endObserving()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RoamingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
