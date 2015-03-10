.class final Lcom/android/services/telephony/TelecomAccountRegistry;
.super Ljava/lang/Object;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    }
.end annotation


# static fields
.field private static final phoneAccountIcons:[I

.field private static sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:I

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->phoneAccountIcons:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020017
        0x7f020018
        0x7f020019
        0x7f02001a
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry$1;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry$2;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-static {p0, p1, p2}, Lcom/android/services/telephony/TelecomAccountRegistry;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0    # Lcom/android/services/telephony/TelecomAccountRegistry;

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/services/telephony/TelecomAccountRegistry;

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/TelecomAccountRegistry;I)I
    .locals 1
    .param p0    # Lcom/android/services/telephony/TelecomAccountRegistry;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelecomAccountRegistry;->getPhoneAccountIcon(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0    # Lcom/android/services/telephony/TelecomAccountRegistry;

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->tearDownAccounts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->setupAccounts()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/services/telephony/TelecomAccountRegistry;)I
    .locals 1
    .param p0    # Lcom/android/services/telephony/TelecomAccountRegistry;

    iget v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/services/telephony/TelecomAccountRegistry;I)I
    .locals 0
    .param p0    # Lcom/android/services/telephony/TelecomAccountRegistry;
    .param p1    # I

    iput p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    return p1
.end method

.method private cleanupPhoneAccounts()V
    .locals 7

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Unregistering phone account %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/services/telephony/TelecomAccountRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;

    :cond_0
    sget-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhoneAccountIcon(I)I
    .locals 1
    .param p1    # I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->phoneAccountIcons:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->phoneAccountIcons:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020016

    goto :goto_0
.end method

.method private hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3
    .param p1    # Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;
    .locals 2
    .param p0    # Lcom/android/internal/telephony/Phone;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method private static makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    new-instance v1, Landroid/content/ComponentName;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    const-string v0, "E"

    :goto_0
    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v2, v1, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setupAccounts()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const-string v5, "Found %d phones.  Attempting to register."

    new-array v8, v11, [Ljava/lang/Object;

    array-length v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {p0, v5, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v6

    const-string v5, "Phone with subscription id %d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {p0, v5, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    new-instance v8, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    invoke-direct {v8, p0, v3, v10, v10}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;Lcom/android/internal/telephony/Phone;ZZ)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    new-instance v8, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-direct {v8, p0, v9, v11, v10}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;Lcom/android/internal/telephony/Phone;ZZ)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->cleanupPhoneAccounts()V

    return-void
.end method

.method private tearDownAccounts()V
    .locals 3

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->teardown()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method setupOnBoot()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
