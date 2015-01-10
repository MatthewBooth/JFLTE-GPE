.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    const/4 v0, 0x1

    sub-int v1, p4, p2

    sub-int v2, p8, p6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
