.class public Lcom/android/incallui/PostCharDialogFragment;
.super Landroid/app/DialogFragment;
.source "PostCharDialogFragment.java"


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mPostDialStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/PostCharDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/incallui/PostCharDialogFragment;

    iget-object v0, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->postDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08014c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f08014f

    new-instance v4, Lcom/android/incallui/PostCharDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/incallui/PostCharDialogFragment$1;-><init>(Lcom/android/incallui/PostCharDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f080150

    new-instance v4, Lcom/android/incallui/PostCharDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/PostCharDialogFragment$2;-><init>(Lcom/android/incallui/PostCharDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    return-object v2
.end method
