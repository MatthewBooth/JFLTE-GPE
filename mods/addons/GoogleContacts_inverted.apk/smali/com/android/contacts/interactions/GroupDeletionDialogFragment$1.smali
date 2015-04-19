.class Lcom/android/contacts/interactions/GroupDeletionDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupDeletionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/GroupDeletionDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/GroupDeletionDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/GroupDeletionDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupDeletionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/interactions/GroupDeletionDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupDeletionDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->deleteGroup()V

    return-void
.end method
