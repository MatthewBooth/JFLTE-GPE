.class abstract Lcom/android/server/telecom/ServiceBinder;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;,
        Lcom/android/server/telecom/ServiceBinder$Binder;,
        Lcom/android/server/telecom/ServiceBinder$Listener;,
        Lcom/android/server/telecom/ServiceBinder$BindCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ServiceInterface::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAssociatedCallCount:I

.field private mBinder:Landroid/os/IBinder;

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/ServiceBinder$BindCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mIsBindingAborted:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/ServiceBinder$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceAction:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    iput v1, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v2, v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mListeners:Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/telecom/ServiceBinder;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/ServiceBinder;->mIsBindingAborted:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/ServiceBinder;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/ServiceBinder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/ServiceBinder;->mIsBindingAborted:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/ServiceBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/ServiceBinder;->logServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/telecom/ServiceBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/ServiceBinder;->setBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/ServiceBinder;->setBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/telecom/ServiceBinder;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/ServiceBinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/ServiceBinder$BindCallback;

    invoke-interface {v0}, Lcom/android/server/telecom/ServiceBinder$BindCallback;->onFailure()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/telecom/ServiceBinder;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/ServiceBinder$BindCallback;

    invoke-interface {v0}, Lcom/android/server/telecom/ServiceBinder$BindCallback;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private logServiceDisconnected(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Service unbound %s, from %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setBinder(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/ServiceBinder;->setServiceInterface(Landroid/os/IBinder;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/ServiceBinder$Listener;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ServiceBinder$Listener;->onUnbind(Lcom/android/server/telecom/ServiceBinder;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final addListener(Lcom/android/server/telecom/ServiceBinder$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final decrementAssociatedCallCount()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    const-string v0, "Call count decrement %d, %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/android/server/telecom/ServiceBinder;->mIsBindingAborted:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "unbind"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/ServiceBinder;->logServiceDisconnected(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v5, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v5}, Lcom/android/server/telecom/ServiceBinder;->setBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string v0, "%s: ignoring a request to decrement mAssociatedCallCount below zero"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method final incrementAssociatedCallCount()V
    .locals 4

    iget v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    const-string v0, "Call count increment %d, %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final isServiceValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v2, "%s invoked while service is unbound"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected abstract setServiceInterface(Landroid/os/IBinder;)V
.end method
