.class Landroid/wipower/WipowerManager$2;
.super Ljava/lang/Object;
.source "WipowerManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/WipowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/wipower/WipowerManager;


# direct methods
.method constructor <init>(Landroid/wipower/WipowerManager;)V
    .locals 0

    iput-object p1, p0, Landroid/wipower/WipowerManager$2;->this$0:Landroid/wipower/WipowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    invoke-static {p2}, Landroid/wipower/IWipower$Stub;->asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipower;

    move-result-object v1

    # setter for: Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;
    invoke-static {v1}, Landroid/wipower/WipowerManager;->access$102(Landroid/wipower/IWipower;)Landroid/wipower/IWipower;

    const-string v1, "WipowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy object connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;
    invoke-static {}, Landroid/wipower/WipowerManager;->access$100()Landroid/wipower/IWipower;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    # getter for: Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;
    invoke-static {}, Landroid/wipower/WipowerManager;->access$100()Landroid/wipower/IWipower;

    move-result-object v1

    iget-object v2, p0, Landroid/wipower/WipowerManager$2;->this$0:Landroid/wipower/WipowerManager;

    # getter for: Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;
    invoke-static {v2}, Landroid/wipower/WipowerManager;->access$200(Landroid/wipower/WipowerManager;)Landroid/wipower/IWipowerManagerCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/wipower/IWipower;->registerCallback(Landroid/wipower/IWipowerManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "WipowerManager"

    const-string v2, "Calling onWipowerReady"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/wipower/WipowerManager$2;->this$0:Landroid/wipower/WipowerManager;

    invoke-virtual {v1}, Landroid/wipower/WipowerManager;->updateWipowerReady()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "WipowerManager"

    const-string/jumbo v2, "not able to register as client"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;

    const-string v1, "WipowerManager"

    const-string v2, "Proxy object disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    # getter for: Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;
    invoke-static {}, Landroid/wipower/WipowerManager;->access$100()Landroid/wipower/IWipower;

    move-result-object v1

    iget-object v2, p0, Landroid/wipower/WipowerManager$2;->this$0:Landroid/wipower/WipowerManager;

    # getter for: Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;
    invoke-static {v2}, Landroid/wipower/WipowerManager;->access$200(Landroid/wipower/WipowerManager;)Landroid/wipower/IWipowerManagerCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/wipower/IWipower;->unregisterCallback(Landroid/wipower/IWipowerManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    # setter for: Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;
    invoke-static {v1}, Landroid/wipower/WipowerManager;->access$102(Landroid/wipower/IWipower;)Landroid/wipower/IWipower;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "WipowerManager"

    const-string/jumbo v2, "not able to unregister as client"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
