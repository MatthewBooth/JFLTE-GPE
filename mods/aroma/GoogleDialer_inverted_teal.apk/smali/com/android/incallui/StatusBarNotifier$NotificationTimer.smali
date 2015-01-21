.class interface abstract Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NotificationTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;
.end method

.method public abstract schedule()V
.end method
