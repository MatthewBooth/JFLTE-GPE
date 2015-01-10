.class Lcom/android/systemui/recent/RecentTasksLoader$3;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22
    .param p1    # [Ljava/lang/Void;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v17

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const/16 v1, 0x15

    const/4 v2, 0x6

    invoke-virtual {v8, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v16

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    const/4 v10, 0x1

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    const/16 v1, 0x15

    if-ge v13, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    if-eqz v10, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    :cond_1
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/android/systemui/recent/TaskDescription;

    invoke-direct {v2}, Lcom/android/systemui/recent/TaskDescription;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    return-object v1

    :cond_2
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    # invokes: Lcom/android/systemui/recent/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    invoke-static {v1, v2, v11}, Lcom/android/systemui/recent/RecentTasksLoader;->access$800(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v19

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;I)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v15

    if-eqz v15, :cond_4

    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v15}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_6

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$900(Lcom/android/systemui/recent/RecentTasksLoader;)I

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v0, p1, v3

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/RecentTasksLoader;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$602(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # setter for: Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z
    invoke-static {v1, v3}, Lcom/android/systemui/recent/RecentTasksLoader;->access$502(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z

    :cond_2
    return-void
.end method
