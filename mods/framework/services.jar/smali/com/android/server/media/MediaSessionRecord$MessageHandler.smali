.class Lcom/android/server/media/MediaSessionRecord$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0xd

.field private static final MSG_FOLDER_INFO_BROWSED_PLAYER:I = 0x9

.field private static final MSG_PLAY_ITEM_RESPONSE:I = 0xc

.field private static final MSG_SEND_EVENT:I = 0x6

.field private static final MSG_UPDATE_EXTRAS:I = 0x5

.field private static final MSG_UPDATE_METADATA:I = 0x1

.field private static final MSG_UPDATE_NOWPLAYING_CONTENT_CHANGE:I = 0xb

.field private static final MSG_UPDATE_NOWPLAYING_ENTRIES:I = 0xa

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x3

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x4

.field private static final MSG_UPDATE_SESSION_STATE:I = 0x7

.field private static final MSG_UPDATE_VOLUME:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3500(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3600(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3700(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3800(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3900(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->access$4000(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$400(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4100(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushBrowsePlayerInfo()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4200(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushNowPlayingEntries()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4300(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushNowPlayingContentChange()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4400(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushPlayItemResponse()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4500(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public post(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
