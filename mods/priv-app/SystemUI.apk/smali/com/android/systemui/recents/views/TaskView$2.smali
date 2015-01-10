.class Lcom/android/systemui/recents/views/TaskView$2;
.super Landroid/view/ViewOutlineProvider;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$2;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Outline;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$2;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$2;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
