.class Lcom/android/services/telephony/TelecomAccountRegistry$1;
.super Landroid/content/BroadcastReceiver;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$1;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "simDetectStatus"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "SUBINFO_RECORD_UPDATED : %d."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry$1;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->tearDownAccounts()V
    invoke-static {v5}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$500(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry$1;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->setupAccounts()V
    invoke-static {v5}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$600(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    :cond_1
    return-void

    :cond_2
    const-string v5, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "columnName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "stringContent"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUBINFO_CONTENT_CHANGE: Column: %s Content: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v4, v6, v7

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0
.end method
