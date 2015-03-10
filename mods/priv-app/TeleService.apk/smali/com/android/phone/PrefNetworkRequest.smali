.class public Lcom/android/phone/PrefNetworkRequest;
.super Lcom/android/phone/SyncQueue$SyncRequest;
.source "PrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;
    }
.end annotation


# static fields
.field private static final sSyncQueue:Lcom/android/phone/SyncQueue;


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/os/Message;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/SyncQueue;

    invoke-direct {v0}, Lcom/android/phone/SyncQueue;-><init>()V

    sput-object v0, Lcom/android/phone/PrefNetworkRequest;->sSyncQueue:Lcom/android/phone/SyncQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/os/Message;

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/android/phone/PrefNetworkRequest;->sSyncQueue:Lcom/android/phone/SyncQueue;

    invoke-direct {p0, v1}, Lcom/android/phone/SyncQueue$SyncRequest;-><init>(Lcom/android/phone/SyncQueue;)V

    new-instance v1, Lcom/android/phone/PrefNetworkRequest$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/PrefNetworkRequest$1;-><init>(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/PrefNetworkRequest;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    if-eq p3, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v2, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/phone/PrefNetworkRequest;IILcom/android/phone/PrefNetworkRequest$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_2

    sget v1, Lcom/android/phone/PrimarySubSelectionController;->PHONE_COUNT:I

    if-ge p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v2, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    invoke-direct {v2, p0, p2, p3, v4}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/phone/PrefNetworkRequest;IILcom/android/phone/PrefNetworkRequest$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Message;)V
    .locals 0
    .param p0    # Lcom/android/phone/PrefNetworkRequest;
    .param p1    # Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/phone/PrefNetworkRequest;->handleSetPreferredNetwork(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PrefNetworkRequest;Landroid/os/Message;)V
    .locals 0
    .param p0    # Lcom/android/phone/PrefNetworkRequest;
    .param p1    # Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/phone/PrefNetworkRequest;->handleGetPreferredNetwork(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PrefNetworkRequest;I)V
    .locals 0
    .param p0    # Lcom/android/phone/PrefNetworkRequest;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/PrefNetworkRequest;->request(I)V

    return-void
.end method

.method private handleGetPreferredNetwork(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v3, v4, v5

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/phone/PrefNetworkRequest;->savePrefNetworkInSetting(II)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get perferred network for slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " done, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-direct {p0, v2}, Lcom/android/phone/PrefNetworkRequest;->request(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/android/phone/PrefNetworkRequest;->response(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/PrefNetworkRequest;->end()V

    goto :goto_0
.end method

.method private handleSetPreferredNetwork(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PrimarySubSelectionController;->getInstance()Lcom/android/phone/PrimarySubSelectionController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PrimarySubSelectionController;->mPhones:[Lcom/android/internal/telephony/Phone;

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/phone/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/phone/PrefNetworkRequest;->request(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v3}, Lcom/android/phone/PrefNetworkRequest;->response(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/PrefNetworkRequest;->end()V

    goto :goto_0
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;

    const-string v0, "PrimarySubSelectionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_network_request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private request(I)V
    .locals 6
    .param p1    # I

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save network mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to DB first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PrefNetworkRequest;->savePrefNetworkInSetting(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PrimarySubSelectionController;->getInstance()Lcom/android/phone/PrimarySubSelectionController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PrimarySubSelectionController;->mPhones:[Lcom/android/internal/telephony/Phone;

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    aget-object v1, v1, v2

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method private response(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string v0, "pref_network_request"

    const-string v1, "can\'t response the result, replyTo and target are all null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private savePrefNetworkInSetting(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/PrefNetworkRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method protected start()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "no command sent"

    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v1}, Lcom/android/phone/PrefNetworkRequest;->response(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/PrefNetworkRequest;->end()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    iget-object v2, p0, Lcom/android/phone/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to set network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
