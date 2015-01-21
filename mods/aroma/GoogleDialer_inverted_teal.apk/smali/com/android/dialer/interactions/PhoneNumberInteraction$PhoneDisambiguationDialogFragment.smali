.class public Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
.super Landroid/app/DialogFragment;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneDisambiguationDialogFragment"
.end annotation


# instance fields
.field private mCallOrigin:Ljava/lang/String;

.field private mInteractionType:I

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonesAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 4
    .param p0    # Landroid/app/FragmentManager;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v1, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    invoke-direct {v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phoneList"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "interactionType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "callOrigin"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    # getter for: Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p2, :cond_2

    if-ltz p2, :cond_2

    iget-object v5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    const v5, 0x7f0e0116

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v6, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    invoke-static {v0, v6, v7}, Lcom/android/dialer/contact/ContactUpdateService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    iget-object v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    iget v6, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    iget-object v7, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallOrigin:Ljava/lang/String;

    # invokes: Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v5, v6, v7}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->access$200(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "phoneList"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "interactionType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "callOrigin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallOrigin:Ljava/lang/String;

    new-instance v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;

    iget-object v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    iget v5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    invoke-direct {v3, v0, v4, v5}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04003f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const v3, 0x7f080210

    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :cond_0
    const v3, 0x7f080211

    goto :goto_0
.end method
