.class public interface abstract Lcom/android/server/notification/NotificationDelegate;
.super Ljava/lang/Object;
.source "NotificationDelegate.java"


# virtual methods
.method public abstract onClearAll(III)V
.end method

.method public abstract onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract onNotificationClick(IILjava/lang/String;)V
.end method

.method public abstract onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
.end method

.method public abstract onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
.end method

.method public abstract onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract onPanelHidden()V
.end method

.method public abstract onPanelRevealed()V
.end method

.method public abstract onSetDisabled(I)V
.end method
