.class Lcom/android/dialer/dialpad/DialpadFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V
    invoke-static {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$300(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
