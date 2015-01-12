.class Lcom/android/incallui/AnswerFragment$1;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showMessageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$000(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/GlowPadWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$000(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/GlowPadWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$100(Lcom/android/incallui/AnswerFragment;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    return-void
.end method
