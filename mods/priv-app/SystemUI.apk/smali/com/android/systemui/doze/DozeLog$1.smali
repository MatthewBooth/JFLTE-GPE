.class final Lcom/android/systemui/doze/DozeLog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->traceEmergencyCall()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguardBouncerChanged(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguard(Z)V

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0
    .param p1    # I

    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceScreenOff(I)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->traceScreenOn()V

    return-void
.end method
