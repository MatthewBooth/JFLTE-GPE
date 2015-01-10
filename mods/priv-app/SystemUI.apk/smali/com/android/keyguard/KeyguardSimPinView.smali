.class public Lcom/android/keyguard/KeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPinView$4;,
        Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# instance fields
.field private mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

.field mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mRemainingAttempts:I

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mShowDefaultMessage:Z

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubDisplayName:Landroid/widget/TextView;

.field private mSubId:J

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPinView;)J
    .locals 2
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSimPinView;J)J
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->closeKeyGuard()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardSimPinView;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardSimPinView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1    # I
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getPinRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1    # Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method private closeKeyGuard()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(J)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->reset()V

    return-void
.end method

.method private getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 6
    .param p1    # I
    .param p2    # Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lez p1, :cond_2

    if-eqz p2, :cond_1

    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_default_pin_message:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    sget v1, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    goto :goto_2
.end method

.method private getPinRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleSubInfoChange()V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    :cond_0
    sget v5, Lcom/android/keyguard/R$id;->slot_id_name:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_slot_name:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    invoke-static {v8, v9}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    aget v5, v5, v10

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v2, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->sim_card_name_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v10, v3, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleSubInfoChangeIfNeeded()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimPinLockSubId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V

    :cond_0
    return-void
.end method

.method private showDefaultMessage()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$3;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView$3;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->simPinEntry:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    sget v1, Lcom/android/keyguard/R$id;->sub_display_name:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimPinLockSubId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNumPhones()I

    move-result v1

    if-le v1, v5, :cond_1

    sget v1, Lcom/android/keyguard/R$id;->sim_info_message:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChangeIfNeeded()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1    # J

    const/4 v0, 0x0

    return v0
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;

    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->start()V

    goto :goto_0
.end method
