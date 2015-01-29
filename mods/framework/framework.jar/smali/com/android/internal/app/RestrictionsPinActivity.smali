.class public Lcom/android/internal/app/RestrictionsPinActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RestrictionsPinActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCountdownRunnable:Ljava/lang/Runnable;

.field protected mHasRestrictionsPin:Z

.field private mOkButton:Landroid/widget/Button;

.field protected mPinErrorMessage:Landroid/widget/TextView;

.field protected mPinText:Landroid/widget/EditText;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Lcom/android/internal/app/RestrictionsPinActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RestrictionsPinActivity$1;-><init>(Lcom/android/internal/app/RestrictionsPinActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCountdownRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/RestrictionsPinActivity;I)Z
    .locals 1
    .param p0    # Lcom/android/internal/app/RestrictionsPinActivity;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/internal/app/RestrictionsPinActivity;->updatePinTimer(I)Z

    move-result v0

    return v0
.end method

.method private updatePinTimer(I)Z
    .locals 8
    .param p1    # I

    const/4 v6, 0x0

    if-gez p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->checkRestrictionsChallenge(Ljava/lang/String;)I

    move-result p1

    :cond_0
    const/16 v3, 0xc8

    if-lt p1, v3, :cond_2

    const v3, 0xea60

    if-gt p1, v3, :cond_1

    add-int/lit16 v3, p1, 0xc8

    div-int/lit16 v2, v3, 0x3e8

    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1140018

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCountdownRunnable:Ljava/lang/Runnable;

    const/16 v5, 0x3e8

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->setPositiveButtonState(Z)V

    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const v4, 0x1040676

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const v4, 0x104066f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method protected initUi()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x104066d

    invoke-virtual {p0, v2}, Lcom/android/internal/app/RestrictionsPinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/internal/app/RestrictionsPinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x10900b1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x102036c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x102036b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x102036e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mOkButton:Landroid/widget/Button;

    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x102036d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mOkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->performPositiveButtonAction()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mHasRestrictionsPin:Z

    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->initUi()V

    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->setupAlert()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->performPositiveButtonAction()V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestrictionsPinActivity;->setPositiveButtonState(Z)V

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-direct {p0, v3}, Lcom/android/internal/app/RestrictionsPinActivity;->updatePinTimer(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->verifyingPin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RestrictionsPinActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestrictionsPinActivity;->setPositiveButtonState(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected performPositiveButtonAction()V
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->checkRestrictionsChallenge(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RestrictionsPinActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const v2, 0x104066f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->updatePinTimer(I)Z

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setPositiveButtonState(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected verifyingPin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
