.class public final Landroid/wipower/WipowerManager;
.super Ljava/lang/Object;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wipower/WipowerManager$PowerApplyEvent;,
        Landroid/wipower/WipowerManager$WipowerState;,
        Landroid/wipower/WipowerManager$PowerLevel;,
        Landroid/wipower/WipowerManager$WipowerAlert;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WipowerManager"

.field private static final VDBG:Z

.field private static mAlert:Landroid/wipower/WipowerManager$WipowerAlert;

.field private static mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/wipower/WipowerManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mPruData:Landroid/wipower/WipowerDynamicParam;

.field private static mService:Landroid/wipower/IWipower;

.field private static mState:Landroid/wipower/WipowerManager$WipowerState;

.field private static mWipowerManager:Landroid/wipower/WipowerManager;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/wipower/WipowerManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/wipower/WipowerManager$1;

    invoke-direct {v3, p0}, Landroid/wipower/WipowerManager$1;-><init>(Landroid/wipower/WipowerManager;)V

    iput-object v3, p0, Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;

    new-instance v3, Landroid/wipower/WipowerManager$2;

    invoke-direct {v3, p0}, Landroid/wipower/WipowerManager$2;-><init>(Landroid/wipower/WipowerManager;)V

    iput-object v3, p0, Landroid/wipower/WipowerManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Landroid/wipower/IWipower;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/wipower/WipowerManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "WipowerManager"

    const-string v4, "Could not bind to Wipower Service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v3, "WipowerManager"

    const-string v4, "Bound to Wipower Service"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/wipower/WipowerDynamicParam;

    invoke-direct {v3}, Landroid/wipower/WipowerDynamicParam;-><init>()V

    sput-object v3, Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    return-void

    :catch_0
    move-exception v2

    const-string v3, "WipowerManager"

    const-string v4, "Security Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/wipower/WipowerDynamicParam;
    .locals 1

    sget-object v0, Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;

    return-object v0
.end method

.method static synthetic access$100()Landroid/wipower/IWipower;
    .locals 1

    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    return-object v0
.end method

.method static synthetic access$102(Landroid/wipower/IWipower;)Landroid/wipower/IWipower;
    .locals 0
    .param p0    # Landroid/wipower/IWipower;

    sput-object p0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    return-object p0
.end method

.method static synthetic access$200(Landroid/wipower/WipowerManager;)Landroid/wipower/IWipowerManagerCallback;
    .locals 1
    .param p0    # Landroid/wipower/WipowerManager;

    iget-object v0, p0, Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;

    return-object v0
.end method

.method public static declared-synchronized getWipowerManger(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)Landroid/wipower/WipowerManager;
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/wipower/WipowerManagerCallback;

    const-class v1, Landroid/wipower/WipowerManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WipowerManager"

    const-string v2, "Wipower not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;

    if-nez v0, :cond_1

    const-string v0, "WipowerManager"

    const-string v2, "Instantiate Singleton"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/wipower/WipowerManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/wipower/WipowerManager;-><init>(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)V

    sput-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;

    :cond_1
    sget-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static isWipowerSupported()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.bluetooth.a4wp"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    const-string v1, "WipowerManager"

    const-string v2, "System.getProperty is true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v0, "WipowerManager"

    const-string v2, "System.getProperty is false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public enableAlertNotification(Z)Z
    .locals 4
    .param p1    # Z

    const/4 v1, 0x0

    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1}, Landroid/wipower/IWipower;->enableAlert(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WipowerManager"

    const-string v3, "Service  Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDataNotification(Z)Z
    .locals 4
    .param p1    # Z

    const/4 v1, 0x0

    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1}, Landroid/wipower/IWipower;->enableData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePowerApply(ZZZ)Z
    .locals 5
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    const/4 v1, 0x0

    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enablePowerApply: enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "time_flag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1, p2, p3}, Landroid/wipower/IWipower;->enablePowerApply(ZZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerLevel()Landroid/wipower/WipowerManager$PowerLevel;
    .locals 5

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_UNKNOWN:Landroid/wipower/WipowerManager$PowerLevel;

    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3}, Landroid/wipower/IWipower;->getCurrentLimit()B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0
.end method

.method public getState()Landroid/wipower/WipowerManager$WipowerState;
    .locals 5

    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_0

    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3}, Landroid/wipower/IWipower;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-nez v1, :cond_1

    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->ON:Landroid/wipower/WipowerManager$WipowerState;

    goto :goto_0
.end method

.method public registerCallback(Landroid/wipower/WipowerManagerCallback;)V
    .locals 2
    .param p1    # Landroid/wipower/WipowerManagerCallback;

    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v0, :cond_0

    const-string v0, "WipowerManager"

    const-string/jumbo v1, "registerCallback:Service  not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPowerLevel(Landroid/wipower/WipowerManager$PowerLevel;)Z
    .locals 5
    .param p1    # Landroid/wipower/WipowerManager$PowerLevel;

    const/4 v2, 0x0

    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "WipowerManager"

    const-string v4, "Wipower not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_3

    const/4 v1, 0x2

    :cond_2
    :goto_2
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3, v1}, Landroid/wipower/IWipower;->setCurrentLimit(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startCharging()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WipowerManager"

    const-string v3, "Wipower not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_1

    const-string v2, "WipowerManager"

    const-string/jumbo v3, "startCharging: Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2}, Landroid/wipower/IWipower;->startCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopCharging()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WipowerManager"

    const-string v3, "Wipower not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_1

    const-string v2, "WipowerManager"

    const-string v3, " Wipower Service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2}, Landroid/wipower/IWipower;->stopCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unregisterCallback(Landroid/wipower/WipowerManagerCallback;)V
    .locals 2
    .param p1    # Landroid/wipower/WipowerManagerCallback;

    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v0, :cond_0

    const-string v0, "WipowerManager"

    const-string v1, "Service  not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updatePowerApplyAlert(Landroid/wipower/WipowerManager$PowerApplyEvent;)V
    .locals 3
    .param p1    # Landroid/wipower/WipowerManager$PowerApplyEvent;

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onPowerApply(Landroid/wipower/WipowerManager$PowerApplyEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateWipowerAlert(Landroid/wipower/WipowerManager$WipowerAlert;)V
    .locals 5
    .param p1    # Landroid/wipower/WipowerManager$WipowerAlert;

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateWipowerAlert() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerAlert(Landroid/wipower/WipowerManager$WipowerAlert;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateWipowerData(Landroid/wipower/WipowerDynamicParam;)V
    .locals 5
    .param p1    # Landroid/wipower/WipowerDynamicParam;

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateWipowerData() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerData(Landroid/wipower/WipowerDynamicParam;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateWipowerReady()V
    .locals 3

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2}, Landroid/wipower/WipowerManagerCallback;->onWipowerReady()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateWipowerState(Landroid/wipower/WipowerManager$WipowerState;)V
    .locals 5
    .param p1    # Landroid/wipower/WipowerManager$WipowerState;

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateAdapterState() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerStateChange(Landroid/wipower/WipowerManager$WipowerState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
