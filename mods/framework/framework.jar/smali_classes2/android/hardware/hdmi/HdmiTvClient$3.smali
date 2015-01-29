.class final Landroid/hardware/hdmi/HdmiTvClient$3;
.super Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/hardware/hdmi/HdmiRecordListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getOneTouchRecordSource(I)[B
    .locals 4
    .param p1    # I

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->getOneTouchRecordSource(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v2

    new-array v0, v2, [B

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    goto :goto_0
.end method

.method public onClearTimerRecordingResult(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->onClearTimerRecordingResult(I)V

    return-void
.end method

.method public onOneTouchRecordResult(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordResult(I)V

    return-void
.end method

.method public onTimerRecordingResult(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiRecordListener;->onTimerRecordingResult(Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V

    return-void
.end method
