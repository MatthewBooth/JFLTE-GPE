.class public Lcom/android/systemui/statusbar/policy/NextAlarmController;
.super Landroid/content/BroadcastReceiver;
.source "NextAlarmController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
    }
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mChangeCallbacks:Ljava/util/ArrayList;

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->updateNextAlarm()V

    return-void
.end method

.method private fireNextAlarmChanged()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateNextAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->fireNextAlarmChanged()V

    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    const-string v0, "NextAlarmController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mNextAlarm="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->updateNextAlarm()V

    :cond_1
    return-void
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
