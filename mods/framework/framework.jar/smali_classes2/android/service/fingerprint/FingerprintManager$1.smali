.class Landroid/service/fingerprint/FingerprintManager$1;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/service/fingerprint/FingerprintManager;)V
    .locals 0

    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onEnrollResult(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onAcquired(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onProcessed(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onError(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onRemoved(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
