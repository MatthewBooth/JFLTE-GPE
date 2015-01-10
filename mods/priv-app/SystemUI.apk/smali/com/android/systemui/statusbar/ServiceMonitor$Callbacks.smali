.class public interface abstract Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;
.super Ljava/lang/Object;
.source "ServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onNoService()V
.end method

.method public abstract onServiceStartAttempt()J
.end method
