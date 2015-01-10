.class public Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.super Ljava/lang/Object;
.source "SecurityControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController;


# static fields
.field private static final DEBUG:Z

.field private static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentVpnNetworkId:I

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mVpnConfig:Lcom/android/internal/net/VpnConfig;

.field private mVpnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SecurityController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityService:Landroid/net/IConnectivityManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpnNetworkId:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;I)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->setCurrentNetid(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpnNetworkId:I

    return v0
.end method

.method private fireCallbacks()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;->onStateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCurrentNetid(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpnNetworkId:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpnNetworkId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->updateState()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "SecurityController"

    const-string v2, "Unable to get current VPN"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public disconnectFromVpn()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isLegacyVpn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string v2, "[Legacy VPN]"

    const-string v3, "[Legacy VPN]"

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityService:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    const-string v3, "[Legacy VPN]"

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecurityController"

    const-string v2, "Unable to disconnect from VPN"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    const-string v0, "SecurityController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mCurrentVpnNetworkId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpnNetworkId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mVpnConfig="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mVpnName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegacyVpnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileOwnerName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnApp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnName:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeviceOwner()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProfileOwner()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegacyVpn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    return v0
.end method

.method public isVpnEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpnNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
