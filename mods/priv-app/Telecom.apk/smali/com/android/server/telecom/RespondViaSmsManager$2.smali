.class final Lcom/android/server/telecom/RespondViaSmsManager$2;
.super Ljava/lang/Thread;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/RespondViaSmsManager;->loadCannedTextMessages(Landroid/telecom/Response;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/RespondViaSmsManager;

.field private synthetic val$context:Landroid/content/Context;

.field private synthetic val$response:Landroid/telecom/Response;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/RespondViaSmsManager;Landroid/content/Context;Landroid/telecom/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/RespondViaSmsManager;

    iput-object p2, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->val$response:Landroid/telecom/Response;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/RespondViaSmsManager;

    const-string v1, "loadCannedResponses() starting"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/AsyncRingtonePlayer;->maybeMigrateLegacyQuickResponses(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->val$context:Landroid/content/Context;

    const-string v1, "respond_via_sms_prefs"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "canned_response_pref_1"

    const v4, 0x7f07000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v3, "canned_response_pref_2"

    const v4, 0x7f070010

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string v4, "canned_response_pref_3"

    const v5, 0x7f070011

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x3

    const-string v4, "canned_response_pref_4"

    const v5, 0x7f070012

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/RespondViaSmsManager;

    const-string v1, "loadCannedResponses() completed, found responses: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->val$response:Landroid/telecom/Response;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/RespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/RespondViaSmsManager;

    # getter for: Lcom/android/server/telecom/RespondViaSmsManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/RespondViaSmsManager;->access$100(Lcom/android/server/telecom/RespondViaSmsManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
