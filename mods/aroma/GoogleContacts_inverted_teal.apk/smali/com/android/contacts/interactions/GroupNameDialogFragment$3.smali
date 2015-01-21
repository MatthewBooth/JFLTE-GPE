.class Lcom/android/contacts/interactions/GroupNameDialogFragment$3;
.super Ljava/lang/Object;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/GroupNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1    # Landroid/text/Editable;

    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;->val$dialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->updateOkButtonState(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method
