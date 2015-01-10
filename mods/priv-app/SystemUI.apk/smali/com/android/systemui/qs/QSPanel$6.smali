.class Lcom/android/systemui/qs/QSPanel$6;
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

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$6;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$6;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$1200(Lcom/android/systemui/qs/QSPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$6;->this$0:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->access$1300(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method
