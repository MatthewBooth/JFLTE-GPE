.class public Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;
.super Ljava/lang/Object;
.source "PhoneNumberDisplayHelper.java"


# instance fields
.field private final mPhoneNumberUtils:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {v0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mPhoneNumberUtils:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;Landroid/content/res/Resources;)V
    .locals 0
    .param p1    # Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;
    .param p2    # Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mPhoneNumberUtils:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    iput-object p2, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method getDisplayName(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    const v1, 0x7f080142

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mPhoneNumberUtils:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isLegacyUnknownNumbers(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayName(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method
