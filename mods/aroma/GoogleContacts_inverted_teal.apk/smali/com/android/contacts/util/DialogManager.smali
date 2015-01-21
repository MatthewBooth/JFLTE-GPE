.class public Lcom/android/contacts/util/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;,
        Lcom/android/contacts/util/DialogManager$DialogShowingView;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mUseDialogId2:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/util/DialogManager;)Landroid/app/Activity;
    .locals 1
    .param p0    # Lcom/android/contacts/util/DialogManager;

    iget-object v0, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static final isManagedId(I)Z
    .locals 1
    .param p0    # I

    const v0, 0x7f0e001c

    if-eq p0, v0, :cond_0

    const v0, 0x7f0e001d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x0

    const v3, 0x7f0e001c

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    :goto_0
    const-string v3, "view_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bundle does not contain a ViewId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const v3, 0x7f0e001d

    if-ne p1, v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    goto :goto_0

    :cond_1
    const-string v3, "view_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/android/contacts/util/DialogManager$DialogShowingView;

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    check-cast v1, Lcom/android/contacts/util/DialogManager$DialogShowingView;

    invoke-interface {v1, p2}, Lcom/android/contacts/util/DialogManager$DialogShowingView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/android/contacts/util/DialogManager$1;

    invoke-direct {v3, p0, p1}, Lcom/android/contacts/util/DialogManager$1;-><init>(Lcom/android/contacts/util/DialogManager;I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1
.end method

.method public showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "view_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bundle already contains a view_id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View does not have a proper ViewId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v2, "view_id"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v2, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    if-eqz v2, :cond_2

    const v0, 0x7f0e001d

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0, p2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    return-void

    :cond_2
    const v0, 0x7f0e001c

    goto :goto_0
.end method
