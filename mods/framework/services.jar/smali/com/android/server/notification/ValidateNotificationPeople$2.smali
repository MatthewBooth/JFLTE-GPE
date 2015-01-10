.class Lcom/android/server/notification/ValidateNotificationPeople$2;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field final synthetic val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

.field final synthetic val$s:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$s:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    invoke-virtual {v0}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->work()V

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$s:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
