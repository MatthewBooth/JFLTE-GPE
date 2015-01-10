.class Lcom/android/server/power/ShutdownThread$6;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    # setter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$102(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :try_start_0
    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Landroid/media/MediaPlayer;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/ShutdownThread$6$1;

    invoke-direct {v3, p0}, Lcom/android/server/power/ShutdownThread$6$1;-><init>(Lcom/android/server/power/ShutdownThread$6;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play shutdown music error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
