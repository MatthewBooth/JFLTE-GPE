.class Lcom/android/systemui/statusbar/BaseStatusBar$5$4;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$5;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$5;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$4;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$4;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$4;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$4;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method
