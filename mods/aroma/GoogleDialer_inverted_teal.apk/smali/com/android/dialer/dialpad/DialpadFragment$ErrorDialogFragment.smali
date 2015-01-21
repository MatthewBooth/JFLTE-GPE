.class public Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# instance fields
.field private mMessageResId:I

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(II)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(II)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 3
    .param p0    # I
    .param p1    # I

    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {v1}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "argTitleResId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "argMessageResId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argTitleResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    const v1, 0x104000a

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment$1;-><init>(Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
