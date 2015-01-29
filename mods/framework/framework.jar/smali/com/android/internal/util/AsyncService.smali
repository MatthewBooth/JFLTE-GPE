.class public abstract Lcom/android/internal/util/AsyncService;
.super Landroid/app/Service;
.source "AsyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncService$AsyncServiceInfo;
    }
.end annotation


# static fields
.field public static final CMD_ASYNC_SERVICE_DESTROY:I = 0x1000000

.field public static final CMD_ASYNC_SERVICE_ON_START_INTENT:I = 0xffffff

.field protected static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AsyncService"


# instance fields
.field mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

.field mHandler:Landroid/os/Handler;

.field protected mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createHandler()Lcom/android/internal/util/AsyncService$AsyncServiceInfo;
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/android/internal/util/AsyncService;->createHandler()Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    iget-object v0, v0, Lcom/android/internal/util/AsyncService$AsyncServiceInfo;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v1, "AsyncService"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/high16 v1, 0x1000000

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    const-string v1, "AsyncService"

    const-string/jumbo v2, "onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const v1, 0xffffff

    iput v1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    iget v1, v1, Lcom/android/internal/util/AsyncService$AsyncServiceInfo;->mRestartFlags:I

    return v1
.end method
