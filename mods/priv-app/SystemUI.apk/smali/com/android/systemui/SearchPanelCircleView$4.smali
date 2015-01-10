.class Lcom/android/systemui/SearchPanelCircleView$4;
.super Landroid/view/ViewOutlineProvider;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$4;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Outline;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$4;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F
    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$300(Lcom/android/systemui/SearchPanelCircleView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$4;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$400(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$4;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F
    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$500(Lcom/android/systemui/SearchPanelCircleView;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    goto :goto_0
.end method
