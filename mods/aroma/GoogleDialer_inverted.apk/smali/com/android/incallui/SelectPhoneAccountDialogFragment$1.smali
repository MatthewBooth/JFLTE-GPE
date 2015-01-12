.class Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectPhoneAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SelectPhoneAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z
    invoke-static {v1, v2}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$002(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Z)Z

    iget-object v1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    # getter for: Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;
    invoke-static {v1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$100(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->handleAccountSelection(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method
