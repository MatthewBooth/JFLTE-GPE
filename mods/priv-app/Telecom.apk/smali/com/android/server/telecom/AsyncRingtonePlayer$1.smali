.class final Lcom/android/server/telecom/AsyncRingtonePlayer$1;
.super Landroid/os/Handler;
.source "AsyncRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/AsyncRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/AsyncRingtonePlayer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/AsyncRingtonePlayer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/AsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/AsyncRingtonePlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/telecom/AsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/AsyncRingtonePlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/server/telecom/AsyncRingtonePlayer;->access$000(Lcom/android/server/telecom/AsyncRingtonePlayer;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/AsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/AsyncRingtonePlayer;

    # invokes: Lcom/android/server/telecom/AsyncRingtonePlayer;->handleRepeat()V
    invoke-static {v0}, Lcom/android/server/telecom/AsyncRingtonePlayer;->access$100(Lcom/android/server/telecom/AsyncRingtonePlayer;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/AsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/AsyncRingtonePlayer;

    # invokes: Lcom/android/server/telecom/AsyncRingtonePlayer;->handleStop()V
    invoke-static {v0}, Lcom/android/server/telecom/AsyncRingtonePlayer;->access$200(Lcom/android/server/telecom/AsyncRingtonePlayer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
