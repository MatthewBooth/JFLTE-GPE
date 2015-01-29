.class public Landroid/service/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final FINGERPRINT_ACQUIRED:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x10

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x8

.field public static final FINGERPRINT_ERROR:I = -0x1

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_NO_RECEIVER:I = -0xa

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_PROCESSED:I = 0x2

.field public static final FINGERPRINT_TEMPLATE_ENROLLING:I = 0x3

.field public static final FINGERPRINT_TEMPLATE_REMOVED:I = 0x4

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x67

.field private static final MSG_PROCESSED:I = 0x66

.field private static final MSG_REMOVED:I = 0x68

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Landroid/service/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/fingerprint/IFingerprintService;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/service/fingerprint/IFingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/service/fingerprint/FingerprintManager$1;

    invoke-direct {v0, p0}, Landroid/service/fingerprint/FingerprintManager$1;-><init>(Landroid/service/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/service/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Landroid/service/fingerprint/FingerprintManager$2;-><init>(Landroid/service/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    const-string v0, "FingerprintManager"

    const-string v1, "FingerprintManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;
    .locals 1
    .param p0    # Landroid/service/fingerprint/FingerprintManager;

    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1
    .param p0    # Landroid/service/fingerprint/FingerprintManager;

    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2710

    goto :goto_0
.end method

.method private sendError(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public enroll(J)V
    .locals 5
    .param p1    # J

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_1

    const/16 v1, -0xa

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/service/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception while enrolling: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public enrollCancel()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    const/16 v1, -0xa

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->enrollCancel(Landroid/os/IBinder;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in enrollCancel(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0

    :cond_1
    const-string v1, "FingerprintManager"

    const-string v2, "enrollCancel(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enrolledAndEnabled()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fingerprint_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintIdsForUser(Landroid/content/ContentResolver;I)[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public remove(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    const/16 v1, -0xa

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/service/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception during remove of fingerprintId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v1, "FingerprintManager"

    const-string v2, "remove(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V
    .locals 5
    .param p1    # Landroid/service/fingerprint/FingerprintManagerReceiver;

    const/4 v3, 0x0

    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/service/fingerprint/IFingerprintService;->startListening(Landroid/os/IBinder;Landroid/service/fingerprint/IFingerprintServiceReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in startListening(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "startListening(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->stopListening(Landroid/os/IBinder;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in stopListening(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "stopListening(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method
