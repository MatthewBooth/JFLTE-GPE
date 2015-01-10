.class public final Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "DigitalPenOffScreenDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$1;,
        Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;,
        Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
    }
.end annotation


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "Digital Pen off-screen display"

.field private static final TAG:Ljava/lang/String; = "DigitalPenOffScreenDisplayAdapter"

.field private static final mDigitalPenCapable:Z


# instance fields
.field private mCallback:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;

.field private mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDigitalPenCapable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Lcom/android/server/display/DisplayAdapter$Listener;

    const-string v5, "DigitalPenOffScreenDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;-><init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$1;)V

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mCallback:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;)Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
    .locals 1
    .param p0    # Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "Digital Pen off-screen display"

    return-object v0
.end method

.method public static isDigitalPenDisabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDigitalPenCapable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerOffScreenDimensionsCallbackLocked()V
    .locals 9

    const-string v6, "DigitalPen"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback;

    aput-object v7, v0, v6

    const-string v6, "registerOffScreenDimensionsCallback"

    invoke-virtual {v2, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mCallback:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;

    aput-object v8, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "DigitalPenOffScreenDisplayAdapter"

    const-string v7, "DigitalPenService.registerOffScreenDimensionsCallback - InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v6, "DigitalPenOffScreenDisplayAdapter"

    const-string v7, "DigitalPenService.registerOffScreenDimensionsCallback - IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v5

    const-string v6, "DigitalPenOffScreenDisplayAdapter"

    const-string v7, "DigitalPenService.registerOffScreenDimensionsCallback Not available."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1    # Ljava/io/PrintWriter;

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public registerLocked()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    invoke-static {}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;-><init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    invoke-direct {p0}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->registerOffScreenDimensionsCallbackLocked()V

    return-void
.end method
