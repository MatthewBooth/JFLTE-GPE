.class public Lcom/android/incallui/AnswerPresenter;
.super Lcom/android/incallui/Presenter;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerPresenter$AnswerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/CallList$Listener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mCallId:Ljava/lang/String;

.field private mHasTextMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    return-void
.end method

.method private configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 5
    .param p1    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-eqz v2, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    :goto_2
    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_2
.end method

.method private processIncomingCall(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1    # Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing incoming for call id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    return-void
.end method

.method private processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1    # Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    return-void
.end method


# virtual methods
.method public onAnswer(ILandroid/content/Context;)V
    .locals 2
    .param p1    # I
    .param p2    # Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1    # Lcom/android/incallui/Call;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1    # Lcom/android/incallui/CallList;

    return-void
.end method

.method public onDecline()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDecline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Call;

    return-void
.end method

.method public onDismissDialog()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1    # Lcom/android/incallui/Call;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onText()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showMessageDialog()V

    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V
    .locals 2
    .param p1    # Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V
    .locals 2
    .param p1    # Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "sendTextToDefaultActivity()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    return-void
.end method
