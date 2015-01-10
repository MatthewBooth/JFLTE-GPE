.class Lcom/android/server/notification/NotificationManagerService$Archive$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$Archive;->filter(Ljava/util/Iterator;Ljava/lang/String;I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/service/notification/StatusBarNotification;",
        ">;"
    }
.end annotation


# instance fields
.field mNext:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService$Archive;

.field final synthetic val$iter:Ljava/util/Iterator;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$Archive;Ljava/util/Iterator;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->this$0:Lcom/android/server/notification/NotificationManagerService$Archive;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$iter:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$Archive$1;->findNext()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->mNext:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method private findNext()Landroid/service/notification/StatusBarNotification;
    .locals 3

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$pkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$pkg:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    :cond_1
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$userId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$userId:I

    if-ne v1, v2, :cond_0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->mNext:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/service/notification/StatusBarNotification;
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->mNext:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$Archive$1;->findNext()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->mNext:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive$1;->next()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
