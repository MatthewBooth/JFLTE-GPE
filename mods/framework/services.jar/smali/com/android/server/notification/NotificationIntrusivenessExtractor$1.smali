.class Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "NotificationIntrusivenessExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationIntrusivenessExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationIntrusivenessExtractor;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V
    .locals 1
    .param p2    # Ljava/lang/String;
    .param p3    # J

    iput-object p1, p0, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;->this$0:Lcom/android/server/notification/NotificationIntrusivenessExtractor;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1    # Lcom/android/server/notification/NotificationRecord;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntusive(Z)V

    return-void
.end method

.method public work()V
    .locals 0

    return-void
.end method
