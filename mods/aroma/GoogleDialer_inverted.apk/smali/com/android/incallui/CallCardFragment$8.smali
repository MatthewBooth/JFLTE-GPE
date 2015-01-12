.class Lcom/android/incallui/CallCardFragment$8;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->updateFabPositionForSecondaryCallInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$1700(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mIsDialpadShowing:Z
    invoke-static {v2}, Lcom/android/incallui/CallCardFragment;->access$1800(Lcom/android/incallui/CallCardFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallCardFragment;->onDialpadVisiblityChange(Z)V

    goto :goto_0
.end method
