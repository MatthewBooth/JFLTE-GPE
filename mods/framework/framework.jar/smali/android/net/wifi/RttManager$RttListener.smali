.class public interface abstract Landroid/net/wifi/RttManager$RttListener;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RttListener"
.end annotation


# virtual methods
.method public abstract onAborted()V
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess([Landroid/net/wifi/RttManager$RttResult;)V
.end method
