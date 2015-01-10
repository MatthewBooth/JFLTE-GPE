.class Lcom/android/systemui/qs/QSPanel$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$7;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$7;->this$0:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->access$1400(Lcom/android/systemui/qs/QSPanel;Z)V

    return-void
.end method
