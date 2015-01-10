.class Lcom/android/systemui/statusbar/ExpandableOutlineView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Outline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    # getter for: Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$000(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v1, v1, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v3, v3, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mActualHeight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v4, v4, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    # getter for: Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$100(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
