.class public abstract Lcom/android/server/SystemService;
.super Ljava/lang/Object;
.source "SystemService.java"


# static fields
.field public static final PHASE_ACTIVITY_MANAGER_READY:I = 0x226

.field public static final PHASE_BOOT_COMPLETED:I = 0x3e8

.field public static final PHASE_LOCK_SETTINGS_READY:I = 0x1e0

.field public static final PHASE_SYSTEM_SERVICES_READY:I = 0x1f4

.field public static final PHASE_THIRD_PARTY_APPS_CAN_START:I = 0x258

.field public static final PHASE_WAIT_FOR_DEFAULT_DISPLAY:I = 0x64


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getManager()Lcom/android/server/SystemServiceManager;
    .locals 1

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    return-object v0
.end method


# virtual methods
.method protected final getBinderService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected final getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isSafeMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SystemService;->getManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isSafeMode()Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onCleanupUser(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public abstract onStart()V
.end method

.method public onStartUser(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onStopUser(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method protected final publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    return-void
.end method

.method protected final publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/IBinder;
    .param p3    # Z

    invoke-static {p1, p2, p3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    return-void
.end method

.method protected final publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
