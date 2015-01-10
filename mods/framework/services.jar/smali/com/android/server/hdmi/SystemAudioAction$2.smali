.class Lcom/android/server/hdmi/SystemAudioAction$2;
.super Ljava/lang/Object;
.source "SystemAudioAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SystemAudioAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SystemAudioAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioAction$2;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send <System Audio Mode Request>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioAction$2;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioAction$2;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    :cond_0
    return-void
.end method
