.class public Lcom/android/incallui/SelectPhoneAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;
    }
.end annotation


# instance fields
.field private mAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSelected:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static showAccountDialog(Landroid/app/FragmentManager;Ljava/util/List;)V
    .locals 2
    .param p0    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;-><init>(Ljava/util/List;)V

    const-string v1, "selectAccount"

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    iput-object v3, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04003d

    iget-object v5, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x7f0801db

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method
