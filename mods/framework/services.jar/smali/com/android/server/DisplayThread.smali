.class public final Lcom/android/server/DisplayThread;
.super Lcom/android/server/ServiceThread;
.source "DisplayThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/DisplayThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "android.display"

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/DisplayThread;

    invoke-direct {v0}, Lcom/android/server/DisplayThread;-><init>()V

    sput-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/DisplayThread;
    .locals 2

    const-class v1, Lcom/android/server/DisplayThread;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    const-class v1, Lcom/android/server/DisplayThread;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
