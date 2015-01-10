.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;
.super Landroid/service/notification/IConditionListener$Stub;
.source "ZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-direct {p0}, Landroid/service/notification/IConditionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsReceived([Landroid/service/notification/Condition;)V
    .locals 3
    .param p1    # [Landroid/service/notification/Condition;

    # getter for: Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "ZenModeController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConditionsReceived "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mRequesting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    array-length v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateConditions([Landroid/service/notification/Condition;)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;[Landroid/service/notification/Condition;)V

    goto :goto_1
.end method
