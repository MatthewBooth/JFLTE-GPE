.class public abstract Landroid/hardware/hdmi/HdmiRecordListener;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOneTouchRecordSource(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.end method

.method public onClearTimerRecordingResult(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onOneTouchRecordResult(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onTimerRecordingResult(Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V
    .locals 0
    .param p1    # Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    return-void
.end method
