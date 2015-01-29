.class Landroid/service/voice/VoiceInteractionSessionService$1;
.super Landroid/service/voice/IVoiceInteractionSessionService$Stub;
.source "VoiceInteractionSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSessionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSessionService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService$1;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    invoke-direct {p0}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public newSession(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/os/Bundle;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService$1;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService$1;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
