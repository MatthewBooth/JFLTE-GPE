.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;
.super Landroid/os/Handler;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->processBroadcastIntent(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
