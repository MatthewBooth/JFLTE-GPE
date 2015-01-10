.class public Lcom/android/systemui/statusbar/policy/MobileDataController;
.super Ljava/lang/Object;
.source "MobileDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MobileDataController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/MobileDataController;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileDataController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileDataController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileDataController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private static addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 4
    .param p0    # Landroid/text/format/Time;
    .param p1    # I

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-object v0
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6
    .param p1    # Landroid/net/NetworkTemplate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v3, v4

    goto :goto_0

    :cond_3
    array-length v0, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v3, v2, v1

    if-eqz v3, :cond_4

    iget-object v5, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v4

    goto :goto_0
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 11
    .param p1    # J
    .param p3    # J

    const v8, 0x10010

    sget-object v9, Lcom/android/systemui/statusbar/policy/MobileDataController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileDataController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileDataController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mSession:Landroid/net/INetworkStatsSession;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "MobileDataController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MobileDataController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/net/NetworkStatsHistory$Entry;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bucketDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bucketStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "MobileDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get data usage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;
    .locals 32

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_0

    const-string v12, "no subscriber id"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataController;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    move-result-object v26

    :goto_0
    return-object v26

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v21

    if-nez v21, :cond_1

    const-string v12, "no stats session"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataController;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    move-result-object v26

    goto :goto_0

    :cond_1
    invoke-static/range {v22 .. v22}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mSession:Landroid/net/INetworkStatsSession;

    const/16 v27, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-lez v12, :cond_5

    sget-boolean v12, Lcom/android/systemui/statusbar/policy/MobileDataController;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string v12, "MobileDataController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cycle day="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " tz="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, v19

    iget-object v12, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v12, v1, v2}, Landroid/text/format/Time;->set(III)V

    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const/4 v12, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataController;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-boolean v12, Lcom/android/systemui/statusbar/policy/MobileDataController;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "MobileDataController"

    const-string v27, "history call from %s to %s now=%s took %sms: %s"

    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v30, v28, v29

    const/16 v29, 0x2

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    aput-object v30, v28, v29

    const/16 v29, 0x3

    sub-long v30, v14, v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x4

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/MobileDataController;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v13, :cond_6

    const-string v12, "no entry data"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataController;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    move-result-object v26

    goto/16 :goto_0

    :cond_4
    const/4 v12, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataController;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    goto :goto_1

    :cond_5
    move-wide v8, v10

    const-wide v28, 0x90321000L

    sub-long v6, v10, v28

    goto/16 :goto_1

    :cond_6
    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v28, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v30, v0

    add-long v24, v28, v30

    new-instance v26, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    invoke-direct/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;-><init>()V

    move-wide/from16 v0, v24

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/MobileDataController;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v26

    iput-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->period:Ljava/lang/String;

    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v12, v28, v30

    if-lez v12, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v28, v0

    :goto_2
    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v12, v28, v30

    if-lez v12, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v28, v0

    :goto_3
    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->warningLevel:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v12, "remote call failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataController;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    move-result-object v26

    goto/16 :goto_0

    :cond_7
    const-wide/16 v28, 0x0

    goto :goto_2

    :cond_8
    const-wide/16 v28, 0x0

    goto :goto_3

    :cond_9
    const-wide v28, 0x80000000L

    :try_start_1
    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->warningLevel:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;->onMobileDataEnabled(Z)V

    :cond_0
    return-void
.end method
