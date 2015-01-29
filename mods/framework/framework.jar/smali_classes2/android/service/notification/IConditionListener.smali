.class public interface abstract Landroid/service/notification/IConditionListener;
.super Ljava/lang/Object;
.source "IConditionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/IConditionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConditionsReceived([Landroid/service/notification/Condition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
