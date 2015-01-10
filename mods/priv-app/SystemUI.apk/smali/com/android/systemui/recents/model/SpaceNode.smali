.class public Lcom/android/systemui/recents/model/SpaceNode;
.super Ljava/lang/Object;
.source "SpaceNode.java"


# instance fields
.field mEndNode:Lcom/android/systemui/recents/model/SpaceNode;

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field mStartNode:Lcom/android/systemui/recents/model/SpaceNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getStacksRec(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/SpaceNode;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mStartNode:Lcom/android/systemui/recents/model/SpaceNode;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/model/SpaceNode;->getStacksRec(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mEndNode:Lcom/android/systemui/recents/model/SpaceNode;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/model/SpaceNode;->getStacksRec(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public getStacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/SpaceNode;->getStacksRec(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public hasTasks()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mStartNode:Lcom/android/systemui/recents/model/SpaceNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mStartNode:Lcom/android/systemui/recents/model/SpaceNode;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mEndNode:Lcom/android/systemui/recents/model/SpaceNode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mEndNode:Lcom/android/systemui/recents/model/SpaceNode;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLeafNode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mStartNode:Lcom/android/systemui/recents/model/SpaceNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/SpaceNode;->mEndNode:Lcom/android/systemui/recents/model/SpaceNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStack(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1    # Lcom/android/systemui/recents/model/TaskStack;

    iput-object p1, p0, Lcom/android/systemui/recents/model/SpaceNode;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-void
.end method
