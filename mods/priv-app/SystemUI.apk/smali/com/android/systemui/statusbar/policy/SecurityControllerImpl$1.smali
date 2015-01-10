.class Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SecurityControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1    # Landroid/net/Network;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    # getter for: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SecurityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget v2, p1, Landroid/net/Network;->netId:I

    # invokes: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->setCurrentNetid(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;I)V

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1    # Landroid/net/Network;

    # getter for: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpnNetworkId:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)I

    move-result v0

    iget v1, p1, Landroid/net/Network;->netId:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    const/4 v1, -0x1

    # invokes: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->setCurrentNetid(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;I)V

    :cond_1
    return-void
.end method
