.class public Lcom/android/phone/ErrorDialogActivity;
.super Landroid/app/Activity;
.source "ErrorDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ErrorDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0    # Lcom/android/phone/ErrorDialogActivity;
    .param p1    # Landroid/content/DialogInterface;

    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    return-void
.end method

.method private showGenericErrorDialog(I)V
    .locals 6
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v1, Lcom/android/phone/ErrorDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ErrorDialogActivity$1;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    new-instance v0, Lcom/android/phone/ErrorDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ErrorDialogActivity$2;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08009b

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMissingVoicemailErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08009b

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$5;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$5;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800a8

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$4;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$4;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/ErrorDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ErrorDialogActivity$3;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_missing_voicemail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "error_message_id"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    sget-object v2, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v3, "ErrorDialogActivity called with no error type extra."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(I)V

    goto :goto_0
.end method
