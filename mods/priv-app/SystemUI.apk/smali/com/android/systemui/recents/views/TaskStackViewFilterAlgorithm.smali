.class public Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewFilterAlgorithm.java"


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/ViewPool;)V
    .locals 0
    .param p1    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p2    # Lcom/android/systemui/recents/views/TaskStackView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/RecentsConfiguration;",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    return-void
.end method
