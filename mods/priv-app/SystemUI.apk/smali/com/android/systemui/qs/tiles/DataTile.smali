.class public Lcom/android/systemui/qs/tiles/DataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DataTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DataTile$DataObserver;
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
.field private mDataObserver:Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

.field private mListening:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1    # Lcom/android/systemui/qs/QSTile$Host;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;-><init>(Lcom/android/systemui/qs/tiles/DataTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataObserver:Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/DataTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DataTile;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DataTile;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/tiles/DataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setEnabled(Z)V
    .locals 7
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile_data"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_2
.end method


# virtual methods
.method public dataSwitchEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public handleClick()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->dataSwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/DataTile;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2    # Ljava/lang/Object;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    const v1, 0x7f020073

    iput v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f020070

    iput v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSTile$State;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public hasIccCard()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return v3

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    goto :goto_1
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataObserver:Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->startObserving()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataObserver:Lcom/android/systemui/qs/tiles/DataTile$DataObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->endObserving()V

    goto :goto_0
.end method
