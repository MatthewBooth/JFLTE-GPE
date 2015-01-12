.class public Lcom/android/incallui/InCallActivity;
.super Landroid/app/Activity;
.source "InCallActivity.java"


# instance fields
.field private mAnimateDialpadOnShow:Z

.field private mAnswerFragment:Lcom/android/incallui/AnswerFragment;

.field private mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

.field private mCallCardFragment:Lcom/android/incallui/CallCardFragment;

.field private mChildFragmentManager:Landroid/app/FragmentManager;

.field private mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

.field private mCurrentOrientation:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialpadFragment:Lcom/android/incallui/DialpadFragment;

.field private mDtmfText:Ljava/lang/String;

.field private mIsForegroundActivity:Z

.field private mIsLandscape:Z

.field private mShowDialpadRequested:Z

.field private mShowPostCharWaitDialogCallId:Ljava/lang/String;

.field private mShowPostCharWaitDialogChars:Ljava/lang/String;

.field private mShowPostCharWaitDialogOnResume:Z

.field private mSlideIn:Landroid/view/animation/Animation;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0
    .param p0    # Lcom/android/incallui/InCallActivity;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0    # Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPendingErrorDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeInCall()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    const v1, 0x7f0e0055

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    const v1, 0x7f0e005c

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    :cond_0
    const-string v7, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_3
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/common/interactions/TouchPointManager;->hasValidPoint()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/common/interactions/TouchPointManager;->getPoint()Landroid/graphics/Point;

    move-result-object v6

    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v7, v6}, Lcom/android/incallui/CallCardFragment;->animateForNewOutgoingCall(Landroid/graphics/Point;)V

    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    if-nez v7, :cond_6

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v7, v9}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v7, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->showAccountDialog(Landroid/app/FragmentManager;Ljava/util/List;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    if-eqz v1, :cond_4

    const-string v7, "touchPoint"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    goto :goto_0

    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_a
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    goto :goto_2
.end method

.method private isEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1    # Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private onDialogDismissed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method private relaunchedFromDialer(Z)V
    .locals 3
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showDialpad(Z)V
    .locals 6
    .param p1    # Z

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0e005b

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/incallui/DialpadFragment;

    invoke-direct {v3}, Lcom/android/incallui/DialpadFragment;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    const-class v5, Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080147

    new-instance v2, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public dismissKeyguard(Z)V
    .locals 2
    .param p1    # Z

    const/high16 v1, 0x400000

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissPendingDialogues()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public displayDialpad(ZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->animateShowDialpad()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->onDialpadVisiblityChange(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto :goto_2
.end method

.method public finish()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish().  Dialog showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingErrorDialog()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->hasPendingDialogs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallCardFragment()Lcom/android/incallui/CallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    return-object v0
.end method

.method public hideDialpadForDisconnect()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1    # Landroid/telecom/DisconnectCause;

    const-string v0, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "onBackPressed()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1, v3}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "Consume Back press for an incoming call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onDeviceRotationChange(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate()...  this = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x288000

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const v3, 0x7f04002f

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v2, v4

    :goto_1
    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v3, :cond_6

    if-eqz v2, :cond_4

    const v3, 0x7f050006

    :goto_2
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz v2, :cond_5

    const v3, 0x7f050009

    :goto_3
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    :goto_4
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p1, :cond_1

    const-string v3, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    iput-boolean v5, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    const-string v3, "InCallActivity.dialpad_text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    :cond_1
    const-string v3, "onCreate(): exit"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    const v3, 0x7f050007

    goto :goto_2

    :cond_5
    const v3, 0x7f05000a

    goto :goto_3

    :cond_6
    const v3, 0x7f050005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    const v3, 0x7f050008

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :goto_0
    :sswitch_1
    return v4

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v3, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    sget-boolean v3, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string v3, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View dump:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4c -> :sswitch_4
        0x5b -> :sswitch_3
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->onBackPressed()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "onResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->setDtmfText(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "InCallActivity.show_dialpad"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    const-string v0, "InCallActivity.dialpad_text"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->getDtmfText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    const-string v0, "onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public showConferenceCallManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    return-void
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    goto :goto_0
.end method
