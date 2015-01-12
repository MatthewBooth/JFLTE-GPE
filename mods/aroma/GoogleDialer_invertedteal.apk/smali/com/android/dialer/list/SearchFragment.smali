.class public Lcom/android/dialer/list/SearchFragment;
.super Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/SearchFragment$HostInterface;
    }
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

.field private mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

.field private mAddToContactNumber:Ljava/lang/String;

.field private mHideDialpadDuration:I

.field private mPaddingTop:I

.field private mShadowHeight:I

.field private mShowDialpadDuration:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/SearchFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SearchFragment;

    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

    return-object v0
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    new-instance v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setUseCallableUri(Z)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1    # Landroid/app/Activity;

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/SearchFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/SearchFragment;->setAdjustSelectionBoundsEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/SearchFragment;->setDarkTheme(Z)V

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/SearchFragment;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/SearchFragment;->setUseCallableUri(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->sendScreenView()V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnListFragmentScrolledListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onItemClick(IJ)V
    .locals 8
    .param p1    # I
    .param p2    # J

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onItemClick(IJ)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onCallNumberDirectly(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->getAddNumberToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f08024c

    invoke-static {v5, v1, v6}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onCallNumberDirectly(Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/list/SearchFragment$HostInterface;

    iput-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v3}, Lcom/android/dialer/list/SearchFragment$HostInterface;->getActionBarHeight()I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mActionBarHeight:I

    const v3, 0x7f0200ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mShadowHeight:I

    const v3, 0x7f0b00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mPaddingTop:I

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mShowDialpadDuration:I

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/list/SearchFragment;->mHideDialpadDuration:I

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClipToPadding(Z)V

    invoke-virtual {p0, v4}, Lcom/android/dialer/list/SearchFragment;->setVisibleScrollbarEnabled(Z)V

    new-instance v3, Lcom/android/dialer/list/SearchFragment$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/list/SearchFragment$1;-><init>(Lcom/android/dialer/list/SearchFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0, v4}, Lcom/android/dialer/list/SearchFragment;->updatePosition(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/ViewUtil;->addBottomPaddingToListViewForFab(Landroid/widget/ListView;Landroid/content/res/Resources;)V

    return-void
.end method

.method public setAddToContactNumber(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dialer/list/SearchFragment;->mAddToContactNumber:Ljava/lang/String;

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    :cond_0
    return-void
.end method

.method public updatePosition(Z)V
    .locals 10
    .param p1    # Z

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/dialer/list/SearchFragment;->mActionBarHeight:I

    iget v8, p0, Lcom/android/dialer/list/SearchFragment;->mShadowHeight:I

    sub-int v5, v7, v8

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isActionBarShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v6

    :cond_1
    :goto_1
    if-eqz p1, :cond_6

    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    :goto_2
    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v0, p0, Lcom/android/dialer/list/SearchFragment;->mShowDialpadDuration:I

    :goto_3
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v7

    int-to-float v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    int-to-float v8, v1

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_4
    iget-object v7, p0, Lcom/android/dialer/list/SearchFragment;->mActivity:Lcom/android/dialer/list/SearchFragment$HostInterface;

    invoke-interface {v7}, Lcom/android/dialer/list/SearchFragment$HostInterface;->isDialpadShown()Z

    move-result v7

    if-eqz v7, :cond_7

    move v4, v6

    :goto_5
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v7

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    return-void

    :cond_2
    iget v7, p0, Lcom/android/dialer/list/SearchFragment;->mShadowHeight:I

    neg-int v5, v7

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/android/dialer/list/SearchFragment;->mActionBarHeight:I

    iget v8, p0, Lcom/android/dialer/list/SearchFragment;->mShadowHeight:I

    sub-int v1, v7, v8

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/dialer/list/SearchFragment;->mHideDialpadDuration:I

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getView()Landroid/view/View;

    move-result-object v7

    int-to-float v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    :cond_7
    iget v4, p0, Lcom/android/dialer/list/SearchFragment;->mPaddingTop:I

    goto :goto_5
.end method
