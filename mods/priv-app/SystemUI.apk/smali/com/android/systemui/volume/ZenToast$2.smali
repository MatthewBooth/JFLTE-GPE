.class Lcom/android/systemui/volume/ZenToast$2;
.super Landroid/os/Handler;
.source "ZenToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenToast;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenToast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenToast$2;->this$0:Lcom/android/systemui/volume/ZenToast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast$2;->this$0:Lcom/android/systemui/volume/ZenToast;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui/volume/ZenToast;->handleShow(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/ZenToast;->access$100(Lcom/android/systemui/volume/ZenToast;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast$2;->this$0:Lcom/android/systemui/volume/ZenToast;

    # invokes: Lcom/android/systemui/volume/ZenToast;->handleHide()V
    invoke-static {v0}, Lcom/android/systemui/volume/ZenToast;->access$200(Lcom/android/systemui/volume/ZenToast;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
