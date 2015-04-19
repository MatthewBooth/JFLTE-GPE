.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    # getter for: Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->access$100(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    # getter for: Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->access$100(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
