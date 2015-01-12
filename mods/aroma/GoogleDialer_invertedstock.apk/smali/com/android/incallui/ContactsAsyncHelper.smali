.class public Lcom/android/incallui/ContactsAsyncHelper;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;,
        Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;,
        Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# instance fields
.field private final mResultHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/ContactsAsyncHelper;

    invoke-direct {v0}, Lcom/android/incallui/ContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/android/incallui/ContactsAsyncHelper;->sInstance:Lcom/android/incallui/ContactsAsyncHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/incallui/ContactsAsyncHelper$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/ContactsAsyncHelper$1;-><init>(Lcom/android/incallui/ContactsAsyncHelper;)V

    iput-object v1, p0, Lcom/android/incallui/ContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/android/incallui/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/incallui/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ContactsAsyncHelper;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/incallui/ContactsAsyncHelper;

    iget-object v0, p0, Lcom/android/incallui/ContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V
    .locals 5
    .param p0    # I
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;
    .param p4    # Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string v2, "startObjectPhotoAsync"

    const-string v3, "Uri is missing"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/android/incallui/ContactsAsyncHelper$1;)V

    iput-object p4, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iput-object p2, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    iput-object p3, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;

    sget-object v2, Lcom/android/incallui/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "startObjectPhotoAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin loading image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", displaying default image for now."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/incallui/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
