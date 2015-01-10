.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final ACCESSORY_CONNECTED:I = 0xff

.field private static final DOCKSTATE_PROPERTY:Ljava/lang/String; = "sys.dockstate"

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private final VIBRATION_DURATION:I

.field private mActualDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p0    # Lcom/android/server/DockObserver;

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p0    # Lcom/android/server/DockObserver;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0    # Lcom/android/server/DockObserver;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/server/DockObserver;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p0    # Lcom/android/server/DockObserver;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)Z
    .locals 1
    .param p0    # Lcom/android/server/DockObserver;

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/DockObserver;Z)Z
    .locals 0
    .param p0    # Lcom/android/server/DockObserver;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0    # Lcom/android/server/DockObserver;

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0    # Lcom/android/server/DockObserver;

    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0    # Lcom/android/server/DockObserver;

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0    # Lcom/android/server/DockObserver;

    iget v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    return v0
.end method

.method private handleDockStateChange()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    const-string v13, "DockObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dock state changed from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v13, "device_provisioned"

    const/4 v15, 0x0

    invoke-static {v3, v13, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v15, 0x9

    if-eq v13, v15, :cond_0

    const/16 v13, 0x9

    if-eq v6, v13, :cond_0

    const-string v13, "DockObserver"

    const-string v15, "Device not provisioned, skipping dock broadcast"

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x20000000

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v13, "android.intent.extra.DOCK_STATE"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v4, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "android.intent.extra.SMART_DOCK_STATE"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v4, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "dock_sounds_enabled"

    const/4 v15, 0x1

    invoke-static {v3, v13, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_a

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v13, :cond_5

    const/4 v13, 0x1

    if-eq v6, v13, :cond_1

    const/4 v13, 0x3

    if-eq v6, v13, :cond_1

    const/4 v13, 0x4

    if-ne v6, v13, :cond_4

    :cond_1
    const-string v12, "desk_undock_sound"

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v15, "audio"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const-string v13, "DockObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "whichSound is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_3

    const/4 v13, 0x1

    if-ne v7, v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v15, 0x9

    if-ne v13, v15, :cond_8

    new-instance v11, Landroid/os/SystemVibrator;

    invoke-direct {v11}, Landroid/os/SystemVibrator;-><init>()V

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v4, v15}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    monitor-exit v14

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_4
    const/4 v13, 0x2

    if-ne v6, v13, :cond_2

    :try_start_1
    const-string v12, "car_undock_sound"

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v15, 0x1

    if-eq v13, v15, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v15, 0x3

    if-eq v13, v15, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v15, 0x4

    if-ne v13, v15, :cond_7

    :cond_6
    const-string v12, "desk_dock_sound"

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_2

    const-string v12, "car_dock_sound"

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    const-string v13, "DockObserver"

    const-string v15, "Not normal mode, don\'t play dock sound"

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    invoke-static {v3, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file://"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v10}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    if-eqz v8, :cond_3

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v8}, Landroid/media/Ringtone;->play()V

    goto :goto_2

    :cond_a
    const-string v13, "DockObserver"

    const-string v15, "DOCK_SOUNDS_ENALBED is not"

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private init()V
    .locals 7

    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [C

    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v1

    :try_start_5
    const-string v4, "DockObserver"

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    :catch_1
    move-exception v1

    :try_start_6
    const-string v4, "DockObserver"

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private setActualDockStateLocked(I)V
    .locals 4
    .param p1    # I

    const/16 v3, 0xff

    const/4 v2, 0x1

    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    :goto_0
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "sys.dockstate"

    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-ne v0, v3, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    goto :goto_1
.end method

.method private setDockStateLocked(I)V
    .locals 4
    .param p1    # I

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_0
    return-void
.end method

.method private updateLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1    # I

    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 3

    const-string v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
