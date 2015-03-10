.class Lcom/android/phone/CallerInfoCache$CacheAsyncTask;
.super Landroid/os/AsyncTask;
.source "CallerInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallerInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/phone/CallerInfoCache;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallerInfoCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->this$0:Lcom/android/phone/CallerInfoCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallerInfoCache;Lcom/android/phone/CallerInfoCache$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/CallerInfoCache;
    .param p2    # Lcom/android/phone/CallerInfoCache$1;

    invoke-direct {p0, p1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;-><init>(Lcom/android/phone/CallerInfoCache;)V

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireWakeLockAndExecute()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->this$0:Lcom/android/phone/CallerInfoCache;

    # getter for: Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/CallerInfoCache;->access$000(Lcom/android/phone/CallerInfoCache;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    # getter for: Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallerInfoCache;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1    # [Ljava/lang/Void;

    # getter for: Lcom/android/phone/CallerInfoCache;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallerInfoCache;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Start refreshing cache."

    # invokes: Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CallerInfoCache;->access$300(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->this$0:Lcom/android/phone/CallerInfoCache;

    # invokes: Lcom/android/phone/CallerInfoCache;->refreshCacheEntry()V
    invoke-static {v0}, Lcom/android/phone/CallerInfoCache;->access$400(Lcom/android/phone/CallerInfoCache;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0
    .param p1    # Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->releaseWakeLock()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1    # Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->releaseWakeLock()V

    return-void
.end method
