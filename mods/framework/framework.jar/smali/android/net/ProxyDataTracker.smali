.class public Landroid/net/ProxyDataTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "ProxyDataTracker.java"


# static fields
.field private static final ACTION_PROXY_STATUS_CHANGE:Ljava/lang/String; = "com.android.net.PROXY_STATUS_CHANGE"

.field private static final DNS1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS2:Ljava/lang/String; = "8.8.4.4"

.field private static final INTERFACE_NAME:Ljava/lang/String; = "ifb0"

.field private static final KEY_IS_PROXY_AVAILABLE:Ljava/lang/String; = "is_proxy_available"

.field private static final KEY_REPLY_TO_MESSENGER_BINDER:Ljava/lang/String; = "reply_to_messenger_binder"

.field private static final KEY_REPLY_TO_MESSENGER_BINDER_BUNDLE:Ljava/lang/String; = "reply_to_messenger_binder_bundle"

.field private static final MSG_SETUP_REQUEST:I = 0x2

.field private static final MSG_TEAR_DOWN_REQUEST:I = 0x1

.field private static final NETWORK_TYPE:Ljava/lang/String; = "PROXY"

.field private static final PERMISSION_PROXY_STATUS_SENDER:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final REASON_DISABLED:Ljava/lang/String; = "disabled"

.field private static final REASON_ENABLED:Ljava/lang/String; = "enabled"

.field private static final REASON_PROXY_DOWN:Ljava/lang/String; = "proxy_down"

.field private static final TAG:Ljava/lang/String; = "ProxyDataTracker"


# instance fields
.field private final mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProxyStatusService:Landroid/os/Messenger;

.field private final mProxyStatusServiceListener:Landroid/content/BroadcastReceiver;

.field private mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTarget:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Landroid/net/ProxyDataTracker$1;

    invoke-direct {v1, p0}, Landroid/net/ProxyDataTracker$1;-><init>(Landroid/net/ProxyDataTracker;)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mProxyStatusServiceListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x10

    const-string v3, "PROXY"

    const-string v4, ""

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    :try_start_0
    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    const-string v2, "8.8.8.8"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    const-string v2, "8.8.4.4"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    const-string v2, "ifb0"

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ProxyDataTracker"

    const-string v2, "Could not add DNS address"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/ProxyDataTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0    # Landroid/net/ProxyDataTracker;

    iget-object v0, p0, Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/ProxyDataTracker;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0    # Landroid/net/ProxyDataTracker;
    .param p1    # Landroid/os/Messenger;

    iput-object p1, p0, Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/ProxyDataTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0    # Landroid/net/ProxyDataTracker;

    iget-object v0, p0, Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/ProxyDataTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/net/ProxyDataTracker;
    .param p1    # Landroid/net/NetworkInfo$DetailedState;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/net/NetworkInfo$DetailedState;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mTarget:Landroid/os/Handler;

    const/high16 v2, 0x70000

    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public reconnect()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, v1}, Landroid/net/ProxyDataTracker;->setTeardownRequested(Z)V

    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "ProxyDataTracker"

    const-string v3, "Reconnect requested even though proxy service is not up. Bailing."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "enabled"

    invoke-direct {p0, v3, v4, v6}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "enabled"

    invoke-direct {p0, v1, v3, v6}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ProxyDataTracker"

    const-string v3, "Unable to connect to proxy status service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v3, "proxy_down"

    invoke-direct {p0, v2, v3, v6}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Landroid/net/ProxyDataTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/ProxyDataTracker;->mTarget:Landroid/os/Handler;

    iget-object v0, p0, Landroid/net/ProxyDataTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mProxyStatusServiceListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.net.PROXY_STATUS_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.ACCESS_NETWORK_CONDITIONS"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public teardown()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/ProxyDataTracker;->setTeardownRequested(Z)V

    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "disabled"

    invoke-direct {p0, v2, v3, v6}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "ProxyDataTracker"

    const-string v3, "Unable to connect to proxy status service"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_0
.end method
