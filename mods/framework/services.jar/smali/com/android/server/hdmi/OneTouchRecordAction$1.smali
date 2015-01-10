.class Lcom/android/server/hdmi/OneTouchRecordAction$1;
.super Ljava/lang/Object;
.source "OneTouchRecordAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/OneTouchRecordAction;->sendRecordOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/OneTouchRecordAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/OneTouchRecordAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 3
    .param p1    # I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(I)V

    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    iget-object v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    iget v1, v1, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    const v2, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/OneTouchRecordAction;->addTimer(II)V

    goto :goto_0
.end method
