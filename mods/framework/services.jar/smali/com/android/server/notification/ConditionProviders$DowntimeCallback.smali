.class Lcom/android/server/notification/ConditionProviders$DowntimeCallback;
.super Ljava/lang/Object;
.source "ConditionProviders.java"

# interfaces
.implements Lcom/android/server/notification/DowntimeConditionProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConditionProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DowntimeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ConditionProviders;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ConditionProviders;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V
    .locals 0
    .param p1    # Lcom/android/server/notification/ConditionProviders;
    .param p2    # Lcom/android/server/notification/ConditionProviders$1;

    invoke-direct {p0, p1}, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;-><init>(Lcom/android/server/notification/ConditionProviders;)V

    return-void
.end method


# virtual methods
.method public onDowntimeChanged(Z)V
    .locals 6
    .param p1    # Z

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->access$500(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v3

    const-string v4, "downtimeEnter"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    const-string v4, "downtime"

    invoke-virtual {v3, v0, v4}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->access$500(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;
    invoke-static {v4}, Lcom/android/server/notification/ConditionProviders;->access$600(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/DowntimeConditionProvider;->isDowntimeCondition(Landroid/service/notification/Condition;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v5, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "downtimeExit"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
