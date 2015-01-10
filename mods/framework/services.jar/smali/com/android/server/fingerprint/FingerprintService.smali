.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;,
        Lcom/android/server/fingerprint/FingerprintService$ClientData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final ENROLL_FINGERPRINT:Ljava/lang/String; = "android.permission.ENROLL_FINGERPRINT"

.field private static final MSG_NOTIFY:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final STATE_ENROLLING:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_LISTENING:I = 0x1

.field private static final STATE_REMOVING:I = 0x3

.field public static final USE_FINGERPRINT:Ljava/lang/String; = "android.permission.USE_FINGERPRINT"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/fingerprint/FingerprintService$ClientData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const-string v0, "FingerprintService"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0    # Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method addListener(Landroid/os/IBinder;Landroid/service/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 5
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/service/fingerprint/IFingerprintServiceReceiver;
    .param p3    # I

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListening("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientData;-><init>(Lcom/android/server/fingerprint/FingerprintService$1;)V

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    iput-object p2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    iput p3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    invoke-direct {v2, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    :try_start_0
    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string v3, "caught remote exception in linkToDeath: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener already registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method handleNotify(III)V
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleNotify(msg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", arg1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", arg2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    if-eqz v1, :cond_0

    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v7, :cond_2

    :cond_0
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clientData at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is invalid!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v3, p2

    :try_start_0
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v3}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    move v0, p2

    :try_start_1
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v0}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onAcquired(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    move v4, p2

    :try_start_2
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v4}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onProcessed(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    move v4, p2

    move v6, p3

    iget v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    :try_start_3
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v4, v6}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    if-nez v6, :cond_1

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v4, v7, v8}, Landroid/service/fingerprint/FingerprintUtils;->addFingerprintIdForUser(ILandroid/content/ContentResolver;I)V

    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v7, "FingerprintService"

    const-string v8, "Client not enrolling"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_5
    move v4, p2

    if-nez v4, :cond_4

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Got illegal id from HAL"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v4, v7, v8}, Landroid/service/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(ILandroid/content/ContentResolver;I)Z

    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v7, :cond_5

    :try_start_4
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v4}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onRemoved(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_3
    const/4 v7, 0x1

    iput v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    goto/16 :goto_1

    :catch_4
    move-exception v2

    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method native nativeCloseHal()I
.end method

.method native nativeEnroll(I)I
.end method

.method native nativeEnrollCancel()I
.end method

.method native nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V
.end method

.method native nativeOpenHal()I
.end method

.method native nativeRemove(I)I
.end method

.method notify(III)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeOpenHal()I

    return-void
.end method

.method removeListener(Landroid/os/IBinder;I)V
    .locals 4
    .param p1    # Landroid/os/IBinder;
    .param p2    # I

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopListening("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startEnroll(Landroid/os/IBinder;JI)V
    .locals 4
    .param p1    # Landroid/os/IBinder;
    .param p2    # J
    .param p4    # I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p4, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->nativeEnroll(I)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "FingerprintService"

    const-string v2, "enroll(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startEnrollCancel(Landroid/os/IBinder;I)V
    .locals 3
    .param p1    # Landroid/os/IBinder;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeEnrollCancel()I

    :goto_0
    return-void

    :cond_1
    const-string v1, "FingerprintService"

    const-string v2, "enrollCancel(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;II)V
    .locals 5
    .param p1    # Landroid/os/IBinder;
    .param p2    # I
    .param p3    # I

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    if-eqz v0, :cond_2

    iget v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v2, p3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad user"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->nativeRemove(I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error removing fingerprint with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): No listener registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
