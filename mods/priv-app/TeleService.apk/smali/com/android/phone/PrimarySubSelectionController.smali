.class public Lcom/android/phone/PrimarySubSelectionController;
.super Landroid/os/Handler;
.source "PrimarySubSelectionController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static final MULTI_MODE:Z

.field static final PHONE_COUNT:I

.field private static instance:Lcom/android/phone/PrimarySubSelectionController;


# instance fields
.field private mAllCardsAbsent:Z

.field private mCardChanged:Z

.field mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

.field private final mContext:Landroid/content/Context;

.field private mIccLoaded:[Z

.field mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private mModemStackReady:Z

.field mPhones:[Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreDdsToPrimarySub:Z

.field private mSIMChangedDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PrimarySubSelectionController;->MULTI_MODE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v5, p0, Lcom/android/phone/PrimarySubSelectionController;->mAllCardsAbsent:Z

    iput-boolean v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardChanged:Z

    iput-boolean v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mModemStackReady:Z

    iput-boolean v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z

    iput-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/PrimarySubSelectionController$1;

    invoke-direct {v2, p0}, Lcom/android/phone/PrimarySubSelectionController$1;-><init>(Lcom/android/phone/PrimarySubSelectionController;)V

    iput-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Lcom/android/internal/telephony/PhoneProxy;

    iput-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v2, Lcom/android/phone/CardStateMonitor;

    invoke-direct {v2, p1}, Lcom/android/phone/CardStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v2, p0, v5, v4}, Lcom/android/phone/CardStateMonitor;->registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    sget v2, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mIccLoaded:[Z

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mIccLoaded:[Z

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/PrimarySubSelectionController;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PrimarySubSelectionController;)[Z
    .locals 1
    .param p0    # Lcom/android/phone/PrimarySubSelectionController;

    iget-object v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mIccLoaded:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PrimarySubSelectionController;)Z
    .locals 1
    .param p0    # Lcom/android/phone/PrimarySubSelectionController;

    iget-boolean v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/PrimarySubSelectionController;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PrimarySubSelectionController;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PrimarySubSelectionController;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/phone/PrimarySubSelectionController;

    iget-object v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private configPrimaryLteSub()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->isPrimarySetable()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "primary is not setable in any sub!"

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/phone/PrimarySubSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PrimarySubSelectionController;->setPreferredNetwork(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->getPrefPrimarySlot()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->getPrimarySlot()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred primary slot is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "primary slot is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is card changed? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    if-ne v0, v5, :cond_4

    iget-boolean v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardChanged:Z

    if-nez v3, :cond_2

    if-ne v1, v5, :cond_4

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eq v2, v5, :cond_6

    if-ne v1, v2, :cond_6

    iget-boolean v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardChanged:Z

    if-nez v3, :cond_6

    const-string v3, "primary sub and network mode are all correct, just notify"

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/PrimarySubSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    if-eq v0, v5, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardChanged:Z

    if-nez v3, :cond_5

    if-eq v1, v0, :cond_3

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    if-ne v2, v5, :cond_0

    const-string v3, "card not changed and primary sub is correct, do nothing"

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCount(Ljava/util/Map;I)I
    .locals 4
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/android/phone/PrimarySubSelectionController;
    .locals 3

    const-class v1, Lcom/android/phone/PrimarySubSelectionController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/PrimarySubSelectionController;->instance:Lcom/android/phone/PrimarySubSelectionController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PrimarySubSelectionController was not initialize!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/phone/PrimarySubSelectionController;->instance:Lcom/android/phone/PrimarySubSelectionController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getKey(Ljava/util/Map;I)Ljava/lang/Integer;
    .locals 3
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredNetworkFromDb(I)I
    .locals 3
    .param p1    # I

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPriority(Ljava/util/Map;Ljava/lang/Integer;)I
    .locals 4
    .param p2    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/phone/PrimarySubSelectionController;->getCount(Ljava/util/Map;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/phone/PrimarySubSelectionController;->getKey(Ljava/util/Map;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-gt v0, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PrimarySubSelectionController;->getPriority(Ljava/util/Map;Ljava/lang/Integer;)I

    move-result v1

    goto :goto_0
.end method

.method private getSIMInfo()Ljava/lang/String;
    .locals 7

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const v5, 0x7f0802d6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const v6, 0x7f0802d1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    sget v4, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/phone/PrimarySubSelectionController;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/phone/PrimarySubSelectionController;->getSimCardInfo(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const v5, 0x7f0802d7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const v6, 0x7f0802d2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const v6, 0x7f0802d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSimCardInfo(I)Ljava/lang/String;
    .locals 8
    .param p1    # I

    invoke-static {p1}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const v5, 0x7f0802d9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    int-to-long v6, p1

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v4, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/IINList;->getDefault(Landroid/content/Context;)Lcom/android/phone/IINList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/IINList;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const v5, 0x7f070023

    const v6, 0x7f070024

    invoke-static {v4, v2, v5, v6}, Landroid/util/NativeTextHelper;->getInternalLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->isAutoConfigMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->getPrimarySlot()I

    move-result v4

    if-ne p1, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(4G)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const v5, 0x7f0802d8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(3G)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/phone/PrimarySubSelectionController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/PrimarySubSelectionController;->instance:Lcom/android/phone/PrimarySubSelectionController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PrimarySubSelectionController;

    invoke-direct {v0, p0}, Lcom/android/phone/PrimarySubSelectionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/PrimarySubSelectionController;->instance:Lcom/android/phone/PrimarySubSelectionController;

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

.method private isAllCardsAbsent()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card state on sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not absent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "all cards absent"

    invoke-direct {p0, v2}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isAutoConfigMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->isPrimaryLteSubEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->isPrimarySetable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->getPrefPrimarySlot()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isManualConfigMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->isPrimaryLteSubEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->isPrimarySetable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->getPrefPrimarySlot()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadStates()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardChanged:Z

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/phone/PrimarySubSelectionController;->isCardsInfoChanged(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardChanged:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->isAllCardsAbsent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mAllCardsAbsent:Z

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "PrimarySubSelectionController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private retrievePriorities()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget v4, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v4, v1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/IINList;->getDefault(Landroid/content/Context;)Lcom/android/phone/IINList;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/android/phone/IINList;->getIINPriority(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private saveLteSubSelectMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "config_lte_sub_select_mode"

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->isManualConfigMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveSubscriptions()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save subscription on sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPrimarySub()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mAllCardsAbsent:Z

    if-eqz v0, :cond_0

    const-string v0, "all cards are absent, do not set primary sub."

    invoke-direct {p0, v0}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mModemStackReady:Z

    if-nez v0, :cond_1

    const-string v0, "modem stack is not ready, do not set primary sub."

    invoke-direct {p0, v0}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->isPrimaryLteSubEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "primary sub config feature is enabled!"

    invoke-direct {p0, v0}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->configPrimaryLteSub()V

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->saveSubscriptions()V

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->saveLteSubSelectMode()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mAllCardsAbsent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mModemStackReady:Z

    goto :goto_0
.end method


# virtual methods
.method protected alertSIMChanged()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802ce

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->getSIMInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0802cf

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PrimarySubSelectionController;->MULTI_MODE:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0802d0

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public getPrefPrimarySlot()I
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->retrievePriorities()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/IINList;->getDefault(Landroid/content/Context;)Lcom/android/phone/IINList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/IINList;->getHighestPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PrimarySubSelectionController;->getPriority(Ljava/util/Map;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public getPrimarySlot()I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/phone/PrimarySubSelectionController;->getPreferredNetworkFromDb(I)I

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 4
    .param p1    # I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "on EVENT MSG_MODEM_STACK_READY"

    invoke-direct {p0, v0}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mModemStackReady:Z

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->setPrimarySub()V

    goto :goto_0

    :pswitch_1
    const-string v0, "on EVENT MSG_ALL_CARDS_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->loadStates()V

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->setPrimarySub()V

    goto :goto_0

    :pswitch_2
    const-string v0, "on EVENT MSG_CONFIG_LTE_DONE"

    invoke-direct {p0, v0}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/PrimarySubSelectionController;->onConfigLteDone(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected isCardsInfoChanged(I)Z
    .locals 5
    .param p1    # I

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v2, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icc id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icc id in sp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPrimaryLteSubEnabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrimarySetable()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->retrievePriorities()Ljava/util/Map;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/PrimarySubSelectionController;->getCount(Ljava/util/Map;I)I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onConfigLteDone(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->getPrimarySlot()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigLteDone primary Slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is icc loaded ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mIccLoaded:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mIccLoaded:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    aget-wide v4, v3, v6

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    iput-boolean v6, p0, Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->isManualConfigMode()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigLteDone isManualConfigMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSelectionController;->isAutoConfigMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSelectionController;->alertSIMChanged()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/PrimarySubSetting;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10800000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;

    check-cast p1, Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public setPreferredNetwork(ILandroid/os/Message;)V
    .locals 5
    .param p1    # I
    .param p2    # Landroid/os/Message;

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    sget v3, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mCardStateMonitor:Lcom/android/phone/CardStateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/IINList;->getDefault(Landroid/content/Context;)Lcom/android/phone/IINList;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/phone/IINList;->getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string v3, "network mode is -1 , can not set primary card "

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set primary card for sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V

    new-instance v3, Lcom/android/phone/PrefNetworkRequest;

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1, v1, p2}, Lcom/android/phone/PrefNetworkRequest;-><init>(Landroid/content/Context;IILandroid/os/Message;)V

    invoke-virtual {v3}, Lcom/android/phone/PrefNetworkRequest;->loop()V

    goto :goto_0
.end method

.method public setRestoreDdsToPrimarySub(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z

    return-void
.end method
