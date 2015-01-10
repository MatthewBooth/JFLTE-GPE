.class Lcom/android/systemui/recent/RecentTasksLoader$1;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentTasksLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    return-void
.end method
