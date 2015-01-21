.class Lcom/android/dialer/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/dialer/PhoneCallDetailsHelper;Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;Landroid/content/res/Resources;)V
    .locals 0
    .param p1    # Lcom/android/dialer/PhoneCallDetailsHelper;
    .param p2    # Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;
    .param p3    # Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private getContactBadgeDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Lcom/android/dialer/PhoneCallDetails;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08023a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastCallType([I)I
    .locals 1
    .param p1    # [I

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getNameOrNumber(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Lcom/android/dialer/PhoneCallDetails;

    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v3, p1, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    iget-object v4, p1, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCallDescription(Landroid/content/Context;Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/dialer/PhoneCallDetails;

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v9, p2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    invoke-direct {p0, v9}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getLastCallType([I)I

    move-result v2

    const/4 v9, 0x4

    if-ne v2, v9, :cond_4

    move v1, v7

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v9, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    invoke-virtual {v9, p2}, Lcom/android/dialer/PhoneCallDetailsHelper;->getCallTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v9, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    invoke-virtual {v9, p2}, Lcom/android/dialer/PhoneCallDetailsHelper;->getCallDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    iget-object v9, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f08023b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v9, p2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    array-length v9, v9

    if-le v9, v7, :cond_1

    iget-object v9, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f08023c

    new-array v11, v7, [Ljava/lang/Object;

    iget-object v12, p2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v9, p2, Lcom/android/dialer/PhoneCallDetails;->features:I

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v7, :cond_2

    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f080086

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getCallDescriptionStringID(Lcom/android/dialer/PhoneCallDetails;)I

    move-result v4

    iget-object v9, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v8

    if-nez v6, :cond_3

    const-string v6, ""

    :cond_3
    aput-object v6, v10, v7

    const/4 v7, 0x2

    aput-object v5, v10, v7

    invoke-virtual {v9, v4, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_4
    move v1, v8

    goto :goto_0
.end method

.method public getCallDescriptionStringID(Lcom/android/dialer/PhoneCallDetails;)I
    .locals 3
    .param p1    # Lcom/android/dialer/PhoneCallDetails;

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    invoke-direct {p0, v2}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getLastCallType([I)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const v1, 0x7f08026e

    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const v1, 0x7f08026f

    goto :goto_0

    :cond_2
    const v1, 0x7f080270

    goto :goto_0
.end method

.method public setActionContentDescriptions(Lcom/android/dialer/calllog/CallLogListItemViews;)V
    .locals 7
    .param p1    # Lcom/android/dialer/calllog/CallLogListItemViews;

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080271

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->nameOrNumber:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->videoCallButtonView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080272

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->nameOrNumber:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080273

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->nameOrNumber:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->detailsButtonView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080274

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->nameOrNumber:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p3    # Lcom/android/dialer/PhoneCallDetails;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    iget-object v1, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    invoke-virtual {v0, v1, p3}, Lcom/android/dialer/PhoneCallDetailsHelper;->setPhoneCallDetails(Lcom/android/dialer/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;)V

    iget-object v0, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getContactBadgeDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getCallDescription(Landroid/content/Context;Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->nameOrNumber:Ljava/lang/CharSequence;

    return-void
.end method
