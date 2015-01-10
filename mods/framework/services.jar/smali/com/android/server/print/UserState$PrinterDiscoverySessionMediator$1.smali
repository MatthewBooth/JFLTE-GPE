.class Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;
.super Landroid/os/RemoteCallbackList;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/print/IPrinterDiscoveryObserver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .param p1    # Landroid/os/IInterface;

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->onCallbackDied(Landroid/print/IPrinterDiscoveryObserver;)V

    return-void
.end method

.method public onCallbackDied(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .param p1    # Landroid/print/IPrinterDiscoveryObserver;

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    iget-object v0, v0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
