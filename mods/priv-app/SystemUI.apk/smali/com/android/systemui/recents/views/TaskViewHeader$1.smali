.class Lcom/android/systemui/recents/views/TaskViewHeader$1;
.super Landroid/view/ViewOutlineProvider;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$1;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Outline;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$1;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$1;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method
