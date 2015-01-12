.class public Lcom/android/dialer/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# instance fields
.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private mDescriptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

.field private final mPhoneNumberUtilsWrapper:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;)V
    .locals 2
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Lcom/android/dialer/calllog/CallTypeHelper;
    .param p3    # Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberUtilsWrapper:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    new-instance v0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberUtilsWrapper:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {v0, v1, p1}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;-><init>(Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    return-void
.end method

.method private getCallLocationAndDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Lcom/android/dialer/PhoneCallDetails;

    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/dialer/PhoneCallDetailsHelper;->getCallTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/dialer/PhoneCallDetailsHelper;->getCallDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/dialer/util/DialerUtils;->join(Landroid/content/res/Resources;Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private setCallCountAndDate(Lcom/android/dialer/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1    # Lcom/android/dialer/PhoneCallDetailsViews;
    .param p2    # Ljava/lang/Integer;
    .param p3    # Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08020f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method


# virtual methods
.method public getCallDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 7
    .param p1    # Lcom/android/dialer/PhoneCallDetails;

    iget-wide v0, p1, Lcom/android/dialer/PhoneCallDetails;->date:J

    invoke-direct {p0}, Lcom/android/dialer/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCallTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Lcom/android/dialer/PhoneCallDetails;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberUtilsWrapper:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    sget-object v2, Lcom/android/dialer/calllog/ContactInfo;->GEOCODE_AS_LABEL:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v3, p1, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    iget-object v4, p1, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iget v2, p1, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    iget-object v3, p1, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 7
    .param p1    # Landroid/widget/TextView;
    .param p2    # Lcom/android/dialer/PhoneCallDetails;

    iget-object v2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    iget-object v3, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v4, p2, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    iget-object v5, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0801f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p2, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1    # J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/dialer/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 11
    .param p1    # Lcom/android/dialer/PhoneCallDetailsViews;
    .param p2    # Lcom/android/dialer/PhoneCallDetails;

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v7}, Lcom/android/dialer/calllog/CallTypeIconsView;->clear()V

    iget-object v7, p2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    array-length v2, v7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    const/4 v7, 0x3

    if-ge v4, v7, :cond_2

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    iget-object v8, p2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Lcom/android/dialer/calllog/CallTypeIconsView;->add(I)V

    if-nez v4, :cond_0

    iget-object v7, p2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    aget v7, v7, v4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    const/4 v5, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget-object v8, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    iget v7, p2, Lcom/android/dialer/PhoneCallDetails;->features:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/dialer/calllog/CallTypeIconsView;->setShowVideo(Z)V

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v7}, Lcom/android/dialer/calllog/CallTypeIconsView;->requestLayout()V

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/dialer/calllog/CallTypeIconsView;->setVisibility(I)V

    const/4 v7, 0x3

    if-le v2, v7, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-direct {p0, p2}, Lcom/android/dialer/PhoneCallDetailsHelper;->getCallLocationAndDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/dialer/PhoneCallDetailsHelper;->setCallCountAndDate(Lcom/android/dialer/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    iget-object v7, p2, Lcom/android/dialer/PhoneCallDetails;->accountIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    iget-object v8, p2, Lcom/android/dialer/PhoneCallDetails;->accountIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v7, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    iget-object v8, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v9, p2, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    iget-object v10, p2, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v7, p2, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v6, v3

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextDirection(I)V

    :goto_5
    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_7

    iget-object v7, p2, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    iget-object v8, p2, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    return-void

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v6, p2, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_7
    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p1, Lcom/android/dialer/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6
.end method
