.class Lcom/android/systemui/statusbar/phone/ScrimController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$scrim:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$000(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$000(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # setter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$002(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$scrim:Lcom/android/systemui/statusbar/ScrimView;

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    return-void
.end method
