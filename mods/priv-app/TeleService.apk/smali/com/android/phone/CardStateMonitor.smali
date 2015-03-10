.class public Lcom/android/phone/CardStateMonitor;
.super Landroid/os/Handler;
.source "CardStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CardStateMonitor$CardInfo;
    }
.end annotation


# static fields
.field static final PHONE_COUNT:I

.field private static mIsShutDownInProgress:Z


# instance fields
.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

.field private mContext:Landroid/content/Context;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CardStateMonitor;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    sget v2, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    new-array v2, v2, [Lcom/android/phone/CardStateMonitor$CardInfo;

    iput-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    new-instance v2, Lcom/android/phone/CardStateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CardStateMonitor$1;-><init>(Lcom/android/phone/CardStateMonitor;)V

    iput-object v2, p0, Lcom/android/phone/CardStateMonitor;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    new-instance v3, Lcom/android/phone/CardStateMonitor$CardInfo;

    invoke-direct {v3}, Lcom/android/phone/CardStateMonitor$CardInfo;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/phone/CardStateMonitor;->mIsShutDownInProgress:Z

    return p0
.end method

.method public static getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 5
    .param p0    # I

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aget-object v2, v2, p0

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    sget-boolean v2, Lcom/android/phone/CardStateMonitor;->mIsShutDownInProgress:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method private loadIccId(ILcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 9
    .param p1    # I
    .param p2    # Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v6, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v6, v6, p1

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v6, v7, :cond_3

    move-object v5, v0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v6, 0x2fe2

    const/4 v7, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/CardStateMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v6, v6, p1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static logd(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "CardStateMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyAllCardsAvailableIfNeed()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CardStateMonitor;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1
.end method

.method private notifyCardAvailableIfNeed(ILcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 2
    .param p1    # I
    .param p2    # Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CardStateMonitor;->loadIccId(ILcom/android/internal/telephony/uicc/UiccCard;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->notifyAllCardsAvailableIfNeed()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    # invokes: Lcom/android/phone/CardStateMonitor$CardInfo;->reset()V
    invoke-static {v0}, Lcom/android/phone/CardStateMonitor$CardInfo;->access$100(Lcom/android/phone/CardStateMonitor$CardInfo;)V

    goto :goto_0
.end method

.method private onIccChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1    # Landroid/os/AsyncResult;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->updateCardState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CardStateMonitor;->updateCardState(I)V

    :cond_2
    return-void
.end method

.method private onIccIdLoaded(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1    # Landroid/os/AsyncResult;

    const/4 v5, 0x0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in GET ICCID,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v3, v3, v0

    iput-boolean v5, v3, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v3, v3, v0

    iput-object v2, v3, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor;->notifyAllCardsAvailableIfNeed()V

    :cond_0
    return-void

    :cond_1
    array-length v3, v1

    invoke-static {v1, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get iccid on card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", iccId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCardState(I)V
    .locals 3
    .param p1    # I

    invoke-static {p1}, Lcom/android/phone/CardStateMonitor;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICC changed on sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CardStateMonitor;->notifyCardAvailableIfNeed(ILcom/android/internal/telephony/uicc/UiccCard;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getIccId(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "on EVENT_ICC_CHANGED"

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->onIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "on EVENT_ICCID_LOAD_DONE"

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CardStateMonitor;->onIccIdLoaded(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1    # Landroid/os/Handler;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/CardStateMonitor;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/phone/CardStateMonitor;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CardStateMonitor;->mCards:[Lcom/android/phone/CardStateMonitor$CardInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
