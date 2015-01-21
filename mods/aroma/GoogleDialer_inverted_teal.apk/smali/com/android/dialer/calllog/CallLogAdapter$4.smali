.class Lcom/android/dialer/calllog/CallLogAdapter$4;
.super Landroid/os/Handler;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # invokes: Lcom/android/dialer/calllog/CallLogAdapter;->startRequestProcessing()V
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->access$200(Lcom/android/dialer/calllog/CallLogAdapter;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
