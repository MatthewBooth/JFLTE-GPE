.class Lcom/android/phone/PrefNetworkRequest$1;
.super Landroid/os/Handler;
.source "PrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PrefNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PrefNetworkRequest;


# direct methods
.method constructor <init>(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/phone/PrefNetworkRequest$1;->this$0:Lcom/android/phone/PrefNetworkRequest;

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
    iget-object v0, p0, Lcom/android/phone/PrefNetworkRequest$1;->this$0:Lcom/android/phone/PrefNetworkRequest;

    # invokes: Lcom/android/phone/PrefNetworkRequest;->handleSetPreferredNetwork(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/PrefNetworkRequest;->access$000(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/PrefNetworkRequest$1;->this$0:Lcom/android/phone/PrefNetworkRequest;

    # invokes: Lcom/android/phone/PrefNetworkRequest;->handleGetPreferredNetwork(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/PrefNetworkRequest;->access$100(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest$1;->this$0:Lcom/android/phone/PrefNetworkRequest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/phone/PrefNetworkRequest;->request(I)V
    invoke-static {v1, v0}, Lcom/android/phone/PrefNetworkRequest;->access$200(Lcom/android/phone/PrefNetworkRequest;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
