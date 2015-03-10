.class public Lcom/android/phone/PrimarySubSetting;
.super Landroid/app/Activity;
.source "PrimarySubSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDdsChecBox:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field private mIsPrimaryLteSubEnabled:Z

.field private mOKbutton:Landroid/widget/Button;

.field private mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRecognizeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/PrimarySubSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PrimarySubSetting$1;-><init>(Lcom/android/phone/PrimarySubSetting;)V

    iput-object v0, p0, Lcom/android/phone/PrimarySubSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PrimarySubSetting;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/phone/PrimarySubSetting;

    iget-object v0, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PrimarySubSetting;)Lcom/android/phone/PrimarySubSelectionController;
    .locals 1
    .param p0    # Lcom/android/phone/PrimarySubSetting;

    iget-object v0, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PrimarySubSetting;I)V
    .locals 0
    .param p0    # Lcom/android/phone/PrimarySubSetting;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/PrimarySubSetting;->showFailedDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PrimarySubSetting;)Landroid/widget/CheckBox;
    .locals 1
    .param p0    # Lcom/android/phone/PrimarySubSetting;

    iget-object v0, p0, Lcom/android/phone/PrimarySubSetting;->mDdsChecBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PrimarySubSetting;)V
    .locals 0
    .param p0    # Lcom/android/phone/PrimarySubSetting;

    invoke-direct {p0}, Lcom/android/phone/PrimarySubSetting;->updateState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PrimarySubSetting;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/phone/PrimarySubSetting;

    iget-object v0, p0, Lcom/android/phone/PrimarySubSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private showFailedDialog(I)V
    .locals 7
    .param p1    # I

    const v6, 0x7f0802e4

    const v5, 0x7f0802e2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v1, "com.android.phone.LTE_CONFIGURE"

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v3, p1}, Lcom/android/phone/PrimarySubSelectionController;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/PrimarySubSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0802df

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v3, p1}, Lcom/android/phone/PrimarySubSelectionController;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/PrimarySubSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0802e5

    new-instance v3, Lcom/android/phone/PrimarySubSetting$3;

    invoke-direct {v3, p0}, Lcom/android/phone/PrimarySubSetting$3;-><init>(Lcom/android/phone/PrimarySubSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0802e8

    new-instance v3, Lcom/android/phone/PrimarySubSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/PrimarySubSetting$2;-><init>(Lcom/android/phone/PrimarySubSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v3}, Lcom/android/phone/PrimarySubSelectionController;->getPrimarySlot()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/PrimarySubSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->clearCheck()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/PrimarySubSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/PrimarySubSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    if-ne v1, v0, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/PrimarySubSetting;->mIsPrimaryLteSubEnabled:Z

    if-nez v3, :cond_2

    const v3, 0x7f0802db

    invoke-virtual {p0, v3}, Lcom/android/phone/PrimarySubSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, 0x1

    instance-of v1, p1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/PrimarySubSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/PrimarySubSelectionController;->setPreferredNetwork(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v5, -0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040018

    invoke-virtual {p0, v2}, Lcom/android/phone/PrimarySubSetting;->setContentView(I)V

    invoke-static {}, Lcom/android/phone/PrimarySubSelectionController;->getInstance()Lcom/android/phone/PrimarySubSelectionController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v2}, Lcom/android/phone/PrimarySubSelectionController;->isPrimaryLteSubEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v2}, Lcom/android/phone/PrimarySubSelectionController;->isPrimarySetable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v2}, Lcom/android/phone/PrimarySubSelectionController;->getPrefPrimarySlot()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/PrimarySubSetting;->mIsPrimaryLteSubEnabled:Z

    const v2, 0x7f0f004f

    invoke-virtual {p0, v2}, Lcom/android/phone/PrimarySubSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mRecognizeText:Landroid/widget/TextView;

    const v2, 0x7f0f0050

    invoke-virtual {p0, v2}, Lcom/android/phone/PrimarySubSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/android/phone/PrimarySubSetting;->mIsPrimaryLteSubEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v2, v0}, Lcom/android/phone/PrimarySubSelectionController;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const v2, 0x7f0f0052

    invoke-virtual {p0, v2}, Lcom/android/phone/PrimarySubSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mDdsChecBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mDdsChecBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/android/phone/PrimarySubSetting;->mIsPrimaryLteSubEnabled:Z

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const-string v2, "com.android.phone.LTE_CONFIGURE"

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0802e0

    invoke-virtual {p0, v2}, Lcom/android/phone/PrimarySubSetting;->setTitle(I)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mRecognizeText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v2, 0x7f0f0053

    invoke-virtual {p0, v2}, Lcom/android/phone/PrimarySubSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0802e6

    invoke-virtual {p0, v4}, Lcom/android/phone/PrimarySubSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void

    :cond_2
    const v2, 0x7f0802e1

    invoke-virtual {p0, v2}, Lcom/android/phone/PrimarySubSetting;->setTitle(I)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting;->mDdsChecBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/PrimarySubSetting;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mPrimarySubSelectionController:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v1}, Lcom/android/phone/PrimarySubSelectionController;->getPrimarySlot()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/phone/PrimarySubSetting;->mIsPrimaryLteSubEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/PrimarySubSetting;->updateState()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PrimarySubSetting;->mOKbutton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
