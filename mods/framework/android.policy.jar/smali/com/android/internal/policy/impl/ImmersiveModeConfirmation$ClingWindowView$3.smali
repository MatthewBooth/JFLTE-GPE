.class Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$3;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$3;->this$1:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$3;->this$1:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->access$400(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
