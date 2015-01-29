.class public Landroid/media/SoundPool;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$1;,
        Landroid/media/SoundPool$SoundPoolStub;,
        Landroid/media/SoundPool$SoundPoolImpl;,
        Landroid/media/SoundPool$SoundPoolDelegate;,
        Landroid/media/SoundPool$OnLoadCompleteListener;,
        Landroid/media/SoundPool$Builder;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/media/SoundPool$SoundPoolDelegate;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    return-void
.end method

.method private constructor <init>(ILandroid/media/AudioAttributes;)V
    .locals 2
    .param p1    # I
    .param p2    # Landroid/media/AudioAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "config.disable_media"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/SoundPool$SoundPoolStub;

    invoke-direct {v0}, Landroid/media/SoundPool$SoundPoolStub;-><init>()V

    iput-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/media/SoundPool$SoundPoolImpl;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/SoundPool$SoundPoolImpl;-><init>(Landroid/media/SoundPool;ILandroid/media/AudioAttributes;)V

    iput-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    goto :goto_0
.end method

.method synthetic constructor <init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool$1;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/media/AudioAttributes;
    .param p3    # Landroid/media/SoundPool$1;

    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    return-void
.end method


# virtual methods
.method public final autoPause()V
    .locals 1

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->autoPause()V

    return-void
.end method

.method public final autoResume()V
    .locals 1

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->autoResume()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 1
    .param p1    # Landroid/content/res/AssetFileDescriptor;
    .param p2    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # J
    .param p4    # J
    .param p6    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final pause(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->pause(I)V

    return-void
.end method

.method public final play(IFFIIF)I
    .locals 7
    .param p1    # I
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # I
    .param p6    # F

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolDelegate;->play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->release()V

    return-void
.end method

.method public final resume(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->resume(I)V

    return-void
.end method

.method public final setLoop(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setLoop(II)V

    return-void
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 1
    .param p1    # Landroid/media/SoundPool$OnLoadCompleteListener;

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method public final setPriority(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setPriority(II)V

    return-void
.end method

.method public final setRate(IF)V
    .locals 1
    .param p1    # I
    .param p2    # F

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setRate(IF)V

    return-void
.end method

.method public setVolume(IF)V
    .locals 0
    .param p1    # I
    .param p2    # F

    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    return-void
.end method

.method public final setVolume(IFF)V
    .locals 1
    .param p1    # I
    .param p2    # F
    .param p3    # F

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolDelegate;->setVolume(IFF)V

    return-void
.end method

.method public final stop(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->stop(I)V

    return-void
.end method

.method public final unload(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->unload(I)Z

    move-result v0

    return v0
.end method
