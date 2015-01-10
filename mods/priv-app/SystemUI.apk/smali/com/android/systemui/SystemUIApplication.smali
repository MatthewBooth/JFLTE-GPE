.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui/recent/Recents;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/systemui/volume/VolumeUI;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/systemui/statusbar/SystemBars;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/systemui/usb/StorageNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/systemui/power/PowerUI;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/systemui/media/RingtonePlayer;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/SystemUIApplication;

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/SystemUIApplication;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/SystemUIApplication;

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 1
    .param p0    # Lcom/android/systemui/SystemUIApplication;

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
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

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    iget-boolean v2, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v4, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-nez v4, :cond_1

    const-string v4, "1"

    const-string v5, "sys.boot_completed"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    :cond_1
    const-string v4, "SystemUIService"

    const-string v5, "Starting SystemUI services."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    aget-object v1, v4, v3

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SystemUI;

    aput-object v4, v5, v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v4, v4, v3

    iput-object p0, v4, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v5, v4, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/systemui/SystemUI;->start()V

    iget-boolean v4, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    goto :goto_0
.end method
