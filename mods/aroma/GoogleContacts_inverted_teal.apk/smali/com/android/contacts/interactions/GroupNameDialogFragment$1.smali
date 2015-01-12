.class Lcom/android/contacts/interactions/GroupNameDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->onCompleted(Ljava/lang/String;)V

    return-void
.end method
