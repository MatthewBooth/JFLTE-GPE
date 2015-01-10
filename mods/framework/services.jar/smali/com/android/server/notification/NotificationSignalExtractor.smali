.class public interface abstract Lcom/android/server/notification/NotificationSignalExtractor;
.super Ljava/lang/Object;
.source "NotificationSignalExtractor.java"


# virtual methods
.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end method

.method public abstract setConfig(Lcom/android/server/notification/RankingConfig;)V
.end method
