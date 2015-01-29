.class Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final AP_SLEEP:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final AP_WAKEUP:Ljava/lang/String; = "android.intent.action.SCREEN_ON"


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaPowerManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/16 v5, -0x2e

    const/16 v4, -0x2f

    if-nez p2, :cond_1

    const-string v2, "intent is null"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AP_SLEEP"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v5, v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AP_WAKEUP"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v4, v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v4}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "POWER_CONNECTED"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2a

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v3}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "POWER_DISCONNECTED"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x29

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v3}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0
.end method
