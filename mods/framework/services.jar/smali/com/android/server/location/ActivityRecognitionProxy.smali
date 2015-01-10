.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mActivityRecognitionHardware:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;
    .param p3    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p4    # I
    .param p5    # I
    .param p6    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mActivityRecognitionHardware:Landroid/hardware/location/ActivityRecognitionHardware;

    new-instance v7, Lcom/android/server/location/ActivityRecognitionProxy$1;

    invoke-direct {v7, p0}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    new-instance v0, Lcom/android/server/ServiceWatcher;

    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "com.android.location.service.ActivityRecognitionProvider"

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;
    .locals 1
    .param p0    # Lcom/android/server/location/ActivityRecognitionProxy;

    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mActivityRecognitionHardware:Landroid/hardware/location/ActivityRecognitionHardware;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/hardware/location/ActivityRecognitionHardware;)V
    .locals 0
    .param p0    # Lcom/android/server/location/ActivityRecognitionProxy;
    .param p1    # Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {p0, p1}, Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider(Landroid/hardware/location/ActivityRecognitionHardware;)V

    return-void
.end method

.method private bindProvider(Landroid/hardware/location/ActivityRecognitionHardware;)V
    .locals 4
    .param p1    # Landroid/hardware/location/ActivityRecognitionHardware;

    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "No provider instance found on connection."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mActivityRecognitionHardware:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {v1, v2}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "Error delivering hardware interface."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/os/Handler;
    .param p2    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    new-instance v0, Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)V

    iget-object v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ActivityRecognitionProxy"

    const-string v2, "ServiceWatcher could not start."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
