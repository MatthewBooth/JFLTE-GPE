.class Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;
.super Ljava/lang/Object;
.source "ClearFrequentsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    invoke-virtual {v2}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    const v4, 0x7f080089

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->show(Landroid/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;-><init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
