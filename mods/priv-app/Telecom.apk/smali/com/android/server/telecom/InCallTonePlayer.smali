.class public final Lcom/android/server/telecom/InCallTonePlayer;
.super Ljava/lang/Thread;
.source "InCallTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/InCallTonePlayer$Factory;
    }
.end annotation


# static fields
.field private static sTonesPlaying:I


# instance fields
.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mState:I

.field private final mToneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return-void
.end method

.method private constructor <init>(ILcom/android/server/telecom/CallAudioManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    iput p1, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    iput-object p2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/telecom/CallAudioManager;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/InCallTonePlayer;-><init>(ILcom/android/server/telecom/CallAudioManager;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return v0
.end method

.method static synthetic access$106()I
    .locals 1

    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/InCallTonePlayer;)Lcom/android/server/telecom/CallAudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    return-object v0
.end method

.method private cleanUpTonePlayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/telecom/InCallTonePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/InCallTonePlayer$1;-><init>(Lcom/android/server/telecom/InCallTonePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/16 v2, 0xfa0

    const/16 v4, 0x32

    const/16 v3, 0x50

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "run(toneId = %s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad toneId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    throw v0

    :pswitch_0
    const/16 v4, 0x11

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v2}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothAudioOn()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    :cond_1
    :try_start_2
    const-string v2, "Creating generator"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v6}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/media/ToneGenerator;

    invoke-direct {v2, v0, v4}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    invoke-virtual {v2, v5}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v0, "Starting tone %d...waiting for %d ms."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    add-int/lit8 v5, v3, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x14

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    :try_start_7
    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    :goto_3
    return-void

    :pswitch_1
    const/16 v4, 0x1b

    const/16 v2, 0xc8

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_1

    :pswitch_2
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "OTA Call ended NYI."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/16 v4, 0x16

    const v2, 0x7fffffeb

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_1

    :pswitch_4
    const/16 v3, 0x5f

    const/16 v2, 0x177

    move v5, v3

    move v3, v2

    goto :goto_1

    :pswitch_5
    const/16 v4, 0x12

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_1

    :pswitch_6
    const/16 v3, 0x25

    const/16 v2, 0x1f4

    move v5, v3

    move v3, v2

    goto :goto_1

    :pswitch_7
    const/16 v3, 0x5f

    const/16 v2, 0x177

    move v5, v3

    move v3, v2

    goto :goto_1

    :pswitch_8
    const/16 v3, 0x57

    const/16 v2, 0x1388

    move v5, v3

    move v3, v2

    goto/16 :goto_1

    :pswitch_9
    const/16 v4, 0x26

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_1

    :pswitch_a
    const/16 v4, 0x17

    const v2, 0x7fffffeb

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_1

    :pswitch_b
    const/16 v4, 0x15

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_1

    :pswitch_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Voice privacy tone NYI."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v2, "Failed to create ToneGenerator."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_9
    const-string v1, "wait interrupted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit p0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method final startTone()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setIsTonePlaying(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/InCallTonePlayer;->start()V

    return-void
.end method

.method final stopTone()V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    if-ne v0, v1, :cond_0

    const-string v0, "Stopping the tone %d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
