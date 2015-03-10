.class Lcom/android/phone/HfaLogic$1;
.super Landroid/content/BroadcastReceiver;
.source "HfaLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HfaLogic;->startHfaIntentReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HfaLogic;


# direct methods
.method constructor <init>(Lcom/android/phone/HfaLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/HfaLogic$1;->this$0:Lcom/android/phone/HfaLogic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.action.ERROR_HFA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/HfaLogic$1;->this$0:Lcom/android/phone/HfaLogic;

    const-string v2, "errorCode"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/HfaLogic;->onHfaError(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/HfaLogic;->access$000(Lcom/android/phone/HfaLogic;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.action.COMPLETE_HFA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/HfaLogic;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hfa Successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/HfaLogic$1;->this$0:Lcom/android/phone/HfaLogic;

    # invokes: Lcom/android/phone/HfaLogic;->onHfaSuccess()V
    invoke-static {v1}, Lcom/android/phone/HfaLogic;->access$200(Lcom/android/phone/HfaLogic;)V

    goto :goto_0
.end method
