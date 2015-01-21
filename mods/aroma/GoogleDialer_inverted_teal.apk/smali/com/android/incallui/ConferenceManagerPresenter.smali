.class public Lcom/android/incallui/ConferenceManagerPresenter;
.super Lcom/android/incallui/Presenter;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;"
    }
.end annotation


# instance fields
.field private mCallerIds:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    return-void
.end method

.method private update(Lcom/android/incallui/CallList;)V
    .locals 13
    .param p1    # Lcom/android/incallui/CallList;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v9

    new-array v12, v11, [Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Number of calls is "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v9

    if-eqz v9, :cond_2

    move v4, v10

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v9

    if-eqz v9, :cond_3

    move v5, v10

    :goto_2
    if-eqz v4, :cond_0

    if-nez v5, :cond_4

    :cond_0
    move v1, v10

    :goto_3
    const/4 v6, 0x0

    :goto_4
    const/4 v9, 0x5

    if-ge v6, v9, :cond_8

    iget-object v9, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v9, v9

    if-ge v6, v9, :cond_7

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v0

    if-eqz v1, :cond_5

    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_5

    move v8, v10

    :goto_5
    and-int/lit16 v9, v0, 0x2000

    if-eqz v9, :cond_6

    move v7, v10

    :goto_6
    iget-object v9, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v9

    iget-object v12, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v9, v12}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    invoke-virtual {p0, v6, v2, v8, v7}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_1
    new-array v9, v11, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v4, v11

    goto :goto_1

    :cond_3
    move v5, v11

    goto :goto_2

    :cond_4
    move v1, v11

    goto :goto_3

    :cond_5
    move v8, v11

    goto :goto_5

    :cond_6
    move v7, v11

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9, v11, v11}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    goto :goto_7

    :cond_8
    return-void
.end method


# virtual methods
.method public endConferenceConnection(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getMaxCallersInConference()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/incallui/CallList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3    # Lcom/android/incallui/CallList;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of existing calls is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setVisible(Z)V

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1    # Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1    # Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public separateConferenceConnection(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->separateCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 7
    .param p1    # I
    .param p2    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3    # Z
    .param p4    # Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setRowVisible(IZ)V

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v3

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v0, p1, p3}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setupSeparateButtonForRow(IZ)V

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v0, p1, p4}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setupEndButtonForRow(IZ)V

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    iget-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setRowVisible(IZ)V

    goto :goto_0
.end method
