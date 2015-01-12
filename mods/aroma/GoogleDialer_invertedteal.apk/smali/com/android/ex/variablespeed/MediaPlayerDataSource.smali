.class Lcom/android/ex/variablespeed/MediaPlayerDataSource;
.super Ljava/lang/Object;
.source "MediaPlayerDataSource.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPath:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public playNative()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/ex/variablespeed/VariableSpeedNative;->playFromContext(Landroid/content/Context;Landroid/net/Uri;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ex/variablespeed/VariableSpeedNative;->playUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAsSourceFor(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1    # Landroid/media/MediaPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method
