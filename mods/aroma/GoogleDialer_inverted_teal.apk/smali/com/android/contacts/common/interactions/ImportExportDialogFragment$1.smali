.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # I

    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iput-object p4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    check-cast v2, Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method
