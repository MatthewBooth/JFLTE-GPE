.class public Lcom/android/systemui/qs/tiles/DdsTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DdsTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mDdsObserver:Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;

.field private mListening:Z

.field private mQSTileView:Lcom/android/systemui/qs/QSTileView;

.field private switchDdsAsyncTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1    # Lcom/android/systemui/qs/QSTile$Host;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->DEBUG:Z

    const-string v0, "DdsTile"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DdsTile;->switchDdsAsyncTask:Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;-><init>(Lcom/android/systemui/qs/tiles/DdsTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mDdsObserver:Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DdsTile;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DdsTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DdsTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DdsTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DdsTile;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/tiles/DdsTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DdsTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DdsTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DdsTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DdsTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DdsTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DdsTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DdsTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DdsTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/DdsTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p1    # Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/qs/QSTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;

    return-object v0
.end method

.method public handleClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DdsTile;->switchDdsToNext()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8
    .param p1    # Lcom/android/systemui/qs/QSTile$State;
    .param p2    # Ljava/lang/Object;

    const v4, 0x7f0b010d

    const v7, 0x7f0b010c

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DdsTile;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    packed-switch v1, :pswitch_data_0

    iput v5, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    :goto_1
    return-void

    :pswitch_0
    const v2, 0x7f020074

    iput v2, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    goto :goto_0

    :pswitch_1
    const v2, 0x7f020075

    iput v2, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    goto :goto_0

    :cond_1
    packed-switch v1, :pswitch_data_1

    iput v5, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v2, 0x7f020071

    iput v2, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    goto :goto_2

    :pswitch_3
    const v2, 0x7f020072

    iput v2, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;

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

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mDdsObserver:Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;->startObserving()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->mDdsObserver:Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DdsTile$DdsObserver;->endObserving()V

    goto :goto_0
.end method

.method switchDdsToNext()V
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->switchDdsAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->switchDdsAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    :cond_2
    new-instance v0, Lcom/android/systemui/qs/tiles/DdsTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DdsTile$1;-><init>(Lcom/android/systemui/qs/tiles/DdsTile;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/DdsTile$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile;->switchDdsAsyncTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method
