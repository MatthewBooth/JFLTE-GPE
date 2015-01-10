.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$4;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

.field final synthetic val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$4;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$4;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$900(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->setToggleState(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
