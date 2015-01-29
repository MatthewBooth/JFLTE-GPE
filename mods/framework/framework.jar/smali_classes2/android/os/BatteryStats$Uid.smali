.class public abstract Landroid/os/BatteryStats$Uid;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid$Pkg;,
        Landroid/os/BatteryStats$Uid$Proc;,
        Landroid/os/BatteryStats$Uid$Pid;,
        Landroid/os/BatteryStats$Uid$Sensor;,
        Landroid/os/BatteryStats$Uid$Wakelock;
    }
.end annotation


# static fields
.field public static final NUM_PROCESS_STATE:I = 0x3

.field public static final NUM_USER_ACTIVITY_TYPES:I = 0x3

.field public static final NUM_WIFI_BATCHED_SCAN_BINS:I = 0x5

.field public static final PROCESS_STATE_ACTIVE:I = 0x1

.field public static final PROCESS_STATE_FOREGROUND:I = 0x0

.field static final PROCESS_STATE_NAMES:[Ljava/lang/String;

.field public static final PROCESS_STATE_RUNNING:I = 0x2

.field static final USER_ACTIVITY_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Foreground"

    aput-object v1, v0, v2

    const-string v1, "Active"

    aput-object v1, v0, v3

    const-string v1, "Running"

    aput-object v1, v0, v4

    sput-object v0, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "other"

    aput-object v1, v0, v2

    const-string v1, "button"

    aput-object v1, v0, v3

    const-string v1, "touch"

    aput-object v1, v0, v4

    sput-object v0, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAudioTurnedOnTime(JI)J
.end method

.method public abstract getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getFullWifiLockTime(JI)J
.end method

.method public abstract getJobStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(I)J
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getPackageStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProcessStateTime(IJI)J
.end method

.method public abstract getProcessStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUid()I
.end method

.method public abstract getUserActivityCount(II)I
.end method

.method public abstract getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getVideoTurnedOnTime(JI)J
.end method

.method public abstract getWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiBatchedScanTime(IJI)J
.end method

.method public abstract getWifiMulticastTime(JI)J
.end method

.method public abstract getWifiRunningTime(JI)J
.end method

.method public abstract getWifiScanTime(JI)J
.end method

.method public abstract hasNetworkActivity()Z
.end method

.method public abstract hasUserActivity()Z
.end method

.method public abstract noteActivityPausedLocked(J)V
.end method

.method public abstract noteActivityResumedLocked(J)V
.end method

.method public abstract noteFullWifiLockAcquiredLocked(J)V
.end method

.method public abstract noteFullWifiLockReleasedLocked(J)V
.end method

.method public abstract noteUserActivityLocked(I)V
.end method

.method public abstract noteWifiBatchedScanStartedLocked(IJ)V
.end method

.method public abstract noteWifiBatchedScanStoppedLocked(J)V
.end method

.method public abstract noteWifiMulticastDisabledLocked(J)V
.end method

.method public abstract noteWifiMulticastEnabledLocked(J)V
.end method

.method public abstract noteWifiRunningLocked(J)V
.end method

.method public abstract noteWifiScanStartedLocked(J)V
.end method

.method public abstract noteWifiScanStoppedLocked(J)V
.end method

.method public abstract noteWifiStoppedLocked(J)V
.end method
