.class Lcom/android/services/telephony/PstnIncomingCallNotifier$2;
.super Landroid/content/BroadcastReceiver;
.source "PstnIncomingCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/PstnIncomingCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/PstnIncomingCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier$2;->this$0:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "phoneName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Radio technology switched. Now %s is active."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier$2;->this$0:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    # invokes: Lcom/android/services/telephony/PstnIncomingCallNotifier;->registerForNotifications()V
    invoke-static {v2}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->access$300(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V

    :cond_0
    return-void
.end method
