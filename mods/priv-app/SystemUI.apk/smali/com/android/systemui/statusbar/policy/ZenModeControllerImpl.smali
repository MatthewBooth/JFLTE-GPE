.class public Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Landroid/service/notification/IConditionListener;

.field private final mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mNoMan:Landroid/app/INotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRequesting:Z

.field private final mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModeController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mListener:Landroid/service/notification/IConditionListener;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "zen_mode"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "zen_mode_config_etag"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/INotificationManager;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireExitConditionChanged()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;[Landroid/service/notification/Condition;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1    # [Landroid/service/notification/Condition;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateConditions([Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireNextAlarmChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireEffectsSuppressorChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenAvailableChanged(Z)V

    return-void
.end method

.method private fireConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 3
    .param p1    # [Landroid/service/notification/Condition;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConditionsChanged([Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireEffectsSuppressorChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onEffectsSupressorChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireExitConditionChanged()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->getExitCondition()Landroid/service/notification/Condition;

    move-result-object v1

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZenModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitCondition changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onExitConditionChanged(Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireNextAlarmChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onNextAlarmChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireZenAvailableChanged(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenAvailableChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireZenChanged(I)V
    .locals 3
    .param p1    # I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateConditions([Landroid/service/notification/Condition;)V
    .locals 6
    .param p1    # [Landroid/service/notification/Condition;

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    iget v4, v1, Landroid/service/notification/Condition;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    iget-object v5, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Landroid/service/notification/Condition;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/Condition;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConditionsChanged([Landroid/service/notification/Condition;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getExitCondition()Landroid/service/notification/Condition;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/INotificationManager;

    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getZen()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    return v0
.end method

.method public isZenAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isUserSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestConditions(Z)V
    .locals 3
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mListener:Landroid/service/notification/IConditionListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setExitCondition(Landroid/service/notification/Condition;)V
    .locals 1
    .param p1    # Landroid/service/notification/Condition;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/INotificationManager;

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUserId(I)V
    .locals 6
    .param p1    # I

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    return-void
.end method

.method public setZen(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    return-void
.end method
