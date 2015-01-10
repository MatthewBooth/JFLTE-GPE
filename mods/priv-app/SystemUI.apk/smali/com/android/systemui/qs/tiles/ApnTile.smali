.class public Lcom/android/systemui/qs/tiles/ApnTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ApnTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ApnTile$Apn;,
        Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;
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


# static fields
.field private static final URI_PHONE_FEATURE:Landroid/net/Uri;


# instance fields
.field private final DEBUG:Z

.field private final INDEX_APN:I

.field private final INDEX_ID:I

.field private final INDEX_NAME:I

.field private final INDEX_TYPE:I

.field private final PREFERAPN_URI:Landroid/net/Uri;

.field private final PROJECTION:[Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mApnIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mApnObserver:Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;

.field private mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

.field private mCurrentApnName:Ljava/lang/String;

.field private mCurrentIcon:Ljava/lang/Integer;

.field private mListening:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.qualcomm.qti.phonefeature.FEATURE_PROVIDER"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/ApnTile;->URI_PHONE_FEATURE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 7
    .param p1    # Lcom/android/systemui/qs/QSTile$Host;

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->DEBUG:Z

    const-string v0, "ApnTile"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "apn"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->PROJECTION:[Ljava/lang/String;

    iput v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->INDEX_ID:I

    iput v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->INDEX_NAME:I

    iput v5, p0, Lcom/android/systemui/qs/tiles/ApnTile;->INDEX_APN:I

    iput v6, p0, Lcom/android/systemui/qs/tiles/ApnTile;->INDEX_TYPE:I

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnObserver:Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnIcons:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentIcon:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApnName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnIcons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnIcons:Ljava/util/ArrayList;

    const v1, 0x7f02005f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnIcons:Ljava/util/ArrayList;

    const v1, 0x7f020060

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentIcon:Ljava/lang/Integer;

    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/ApnTile$Apn;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;-><init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnObserver:Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->updateCurrentApn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->PREFERAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->isPhoneFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/tiles/ApnTile;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, v0, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private updateApnIcon()V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnIcons:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentIcon:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnIcons:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnIcons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentIcon:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method private updateCurrentApn()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->PREFERAPN_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/ApnTile$Apn;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/ApnTile$Apn;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/ApnTile$Apn;->apn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/ApnTile$Apn;->type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    throw v0
.end method


# virtual methods
.method public getCurrentApnId()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/ApnTile$Apn;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/ApnTile$Apn;->id:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getCurrentApnName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/ApnTile$Apn;->apn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApn:Lcom/android/systemui/qs/tiles/ApnTile$Apn;

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/ApnTile$Apn;->apn:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public handleClick()V
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getCurrentApnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/ApnTile;->setPrefApn(J)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 6
    .param p1    # Lcom/android/systemui/qs/QSTile$State;
    .param p2    # Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    long-to-int v1, v4

    :cond_0
    if-eqz v1, :cond_2

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->getCurrentApnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApnName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->updateApnIcon()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentApnName:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mCurrentIcon:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ApnTile;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    if-eqz v2, :cond_0

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    return v4

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    goto :goto_1
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

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

.method public isPhoneFeatureEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/ApnTile;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnObserver:Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;->startObserving()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile;->mApnObserver:Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;->endObserving()V

    goto :goto_0
.end method

.method public setPrefApn(J)V
    .locals 3
    .param p1    # J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "current_apn"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "set_next_apn_as_pref"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
