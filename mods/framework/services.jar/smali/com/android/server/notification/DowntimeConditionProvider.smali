.class public Lcom/android/server/notification/DowntimeConditionProvider;
.super Landroid/service/notification/ConditionProviderService;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/DowntimeConditionProvider$Callback;
    }
.end annotation


# static fields
.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final ENTER_ACTION:Ljava/lang/String; = "DowntimeConditions.enter"

.field private static final ENTER_CODE:I = 0x64

.field private static final EXIT_ACTION:Ljava/lang/String; = "DowntimeConditions.exit"

.field private static final EXIT_CODE:I = 0x65

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final TAG:Ljava/lang/String; = "DowntimeConditions"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInDowntime:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DowntimeConditions"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    iput-object p0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DowntimeConditionProvider$1;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    const-string v1, "new DowntimeConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(J)Ljava/lang/String;
    .locals 2
    .param p0    # J

    invoke-static {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/DowntimeConditionProvider;)Ljava/util/Calendar;
    .locals 1
    .param p0    # Lcom/android/server/notification/DowntimeConditionProvider;

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0
    .param p0    # Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0
    .param p0    # Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    return-void
.end method

.method private addDays(JI)J
    .locals 3
    .param p1    # J
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private fireDowntimeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-interface {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider$Callback;->onDowntimeChanged(Z)V

    :cond_0
    return-void
.end method

.method private getDayOfWeek(J)I
    .locals 3
    .param p1    # J

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getTime(JII)J
    .locals 3
    .param p1    # J
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateDays()V

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime()V

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    return-void
.end method

.method private isInDowntime(IJJJ)Z
    .locals 4
    .param p1    # I
    .param p2    # J
    .param p4    # J
    .param p6    # J

    const/4 v1, 0x7

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/DowntimeConditionProvider;->getDayOfWeek(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v3, p1, 0x7

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, p4, p5, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide p4

    invoke-direct {p0, p6, p7, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide p6

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    cmp-long v2, p2, p4

    if-ltz v2, :cond_0

    cmp-long v2, p2, p6

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInDowntime(J)Z
    .locals 11
    .param p1    # J

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    invoke-direct {p0, v6, v7, v9}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide v6

    :cond_2
    const/4 v1, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(IJJJ)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move v1, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v9

    :goto_1
    move v8, v0

    goto :goto_0

    :cond_4
    move v0, v8

    goto :goto_1
.end method

.method private reevaluateDowntime()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(J)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DowntimeConditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inDowntime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    const-string v1, "Entering"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " downtime"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->getDayOfWeek(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceDowntime(ZILandroid/util/ArraySet;)V

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->fireDowntimeChanged()V

    goto :goto_0

    :cond_2
    const-string v1, "Exiting"

    goto :goto_1
.end method

.method private static ts(J)Ljava/lang/String;
    .locals 2
    .param p0    # J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAlarm(Ljava/lang/String;III)V
    .locals 14
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    move/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    move/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide v6

    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "time"

    invoke-virtual {v9, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x8000000

    move/from16 v0, p2

    invoke-static {v8, v0, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "DowntimeConditions"

    const-string v9, "Scheduling %s for %s, %s in the future, now=%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v4, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_2
    return-void
.end method

.method private updateAlarms()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "DowntimeConditions.enter"

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    const-string v0, "DowntimeConditions.exit"

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private updateDays()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;
    .locals 14
    .param p1    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .param p2    # I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v11, "Hm"

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9, v11}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v0, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    iget v3, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v12

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const v3, 0x1040696

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/service/notification/Condition;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0

    :cond_1
    const-string v11, "hma"

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 1
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    const-string v0, "    DowntimeConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mInDowntime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public isDowntimeCondition(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p1    # Landroid/service/notification/Condition;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInDowntime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    return v0
.end method

.method public onConnected()V
    .locals 3

    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DowntimeConditions"

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "DowntimeConditions.enter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "DowntimeConditions.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3
    .param p1    # I

    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestConditions relevance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    :cond_1
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 5
    .param p1    # Landroid/net/Uri;

    sget-boolean v2, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscribe conditionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    sget-boolean v2, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify condition state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;

    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnsubscribe conditionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/DowntimeConditionProvider$Callback;)V
    .locals 0
    .param p1    # Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 2
    .param p1    # Landroid/service/notification/ZenModeConfig;

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DowntimeConditions"

    const-string v1, "setConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->init()V

    goto :goto_0
.end method
