.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$5;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->transition(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

.field final synthetic val$in:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$5;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$5;->val$in:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$5;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$5;->val$in:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$5;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
