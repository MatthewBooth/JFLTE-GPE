.class Lcom/android/server/clipboard/ClipboardService$1;
.super Landroid/content/BroadcastReceiver;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lcom/android/server/clipboard/ClipboardService;->removeClipboard(I)V
    invoke-static {v1, v2}, Lcom/android/server/clipboard/ClipboardService;->access$000(Lcom/android/server/clipboard/ClipboardService;I)V

    :cond_0
    return-void
.end method
