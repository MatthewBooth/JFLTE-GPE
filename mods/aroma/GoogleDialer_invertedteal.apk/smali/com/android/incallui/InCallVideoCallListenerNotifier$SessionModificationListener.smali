.class public interface abstract Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;
.super Ljava/lang/Object;
.source "InCallVideoCallListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallVideoCallListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionModificationListener"
.end annotation


# virtual methods
.method public abstract onDowngradeToAudio(Lcom/android/incallui/Call;)V
.end method

.method public abstract onUpgradeToVideoFail(Lcom/android/incallui/Call;)V
.end method

.method public abstract onUpgradeToVideoRequest(Lcom/android/incallui/Call;)V
.end method

.method public abstract onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
.end method
