.class public Lcom/android/systemui/recents/model/TaskGrouping;
.super Ljava/lang/Object;
.source "TaskGrouping.java"


# instance fields
.field affiliation:I

.field latestActiveTimeInGroup:J

.field mFrontMostTaskKey:Lcom/android/systemui/recents/model/Task$TaskKey;

.field mTaskKeyIndices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTaskKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    iput p1, p0, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    return-void
.end method

.method private updateTaskIndices()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mFrontMostTaskKey:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task$TaskKey;

    iput-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mFrontMostTaskKey:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1    # Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v2, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/model/Task;->setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/model/TaskGrouping;->updateTaskIndices()V

    return-void
.end method

.method public getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;
    .locals 3
    .param p1    # Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskGrouping;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;
    .locals 3
    .param p1    # Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskGrouping;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTaskCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/android/systemui/recents/model/Task;)I
    .locals 2
    .param p1    # Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2
    .param p1    # Lcom/android/systemui/recents/model/Task;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mFrontMostTaskKey:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z
    .locals 3
    .param p1    # Lcom/android/systemui/recents/model/Task;
    .param p2    # Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1    # Lcom/android/systemui/recents/model/Task;

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v2, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iput-wide v2, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/model/Task;->setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/model/TaskGrouping;->updateTaskIndices()V

    return-void
.end method
