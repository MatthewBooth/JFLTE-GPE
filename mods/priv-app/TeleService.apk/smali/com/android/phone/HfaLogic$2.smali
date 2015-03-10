.class Lcom/android/phone/HfaLogic$2;
.super Landroid/os/Handler;
.source "HfaLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HfaLogic;
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

    iput-object p1, p0, Lcom/android/phone/HfaLogic$2;->this$0:Lcom/android/phone/HfaLogic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/phone/HfaLogic$2;->this$0:Lcom/android/phone/HfaLogic;

    # invokes: Lcom/android/phone/HfaLogic;->onServiceStateChange(Landroid/telephony/ServiceState;)V
    invoke-static {v1, v0}, Lcom/android/phone/HfaLogic;->access$300(Lcom/android/phone/HfaLogic;Landroid/telephony/ServiceState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
