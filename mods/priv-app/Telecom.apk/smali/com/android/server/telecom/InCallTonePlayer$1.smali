.class final Lcom/android/server/telecom/InCallTonePlayer$1;
.super Ljava/lang/Object;
.source "InCallTonePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/InCallTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/InCallTonePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/InCallTonePlayer$1;->this$0:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    # getter for: Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I
    invoke-static {}, Lcom/android/server/telecom/InCallTonePlayer;->access$100()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Over-releasing focus for tone player."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    # --operator for: Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I
    invoke-static {}, Lcom/android/server/telecom/InCallTonePlayer;->access$106()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer$1;->this$0:Lcom/android/server/telecom/InCallTonePlayer;

    # getter for: Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/InCallTonePlayer;->access$200(Lcom/android/server/telecom/InCallTonePlayer;)Lcom/android/server/telecom/CallAudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setIsTonePlaying(Z)V

    goto :goto_0
.end method
