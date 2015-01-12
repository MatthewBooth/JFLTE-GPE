.class public interface abstract Lcom/android/incallui/CallList$Listener;
.super Ljava/lang/Object;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallListChange(Lcom/android/incallui/CallList;)V
.end method

.method public abstract onDisconnect(Lcom/android/incallui/Call;)V
.end method

.method public abstract onIncomingCall(Lcom/android/incallui/Call;)V
.end method
