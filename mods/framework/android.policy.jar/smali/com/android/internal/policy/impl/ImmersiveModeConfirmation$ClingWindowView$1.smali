.class Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->access$100(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->access$100(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->access$100(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
