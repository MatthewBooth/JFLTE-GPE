.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$connect:Z

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;ZLandroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$connect:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5
    .param p1    # I
    .param p2    # Landroid/bluetooth/BluetoothProfile;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BluetoothController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->getProfile(Landroid/bluetooth/BluetoothProfile;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "BluetoothController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable get get Profile for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$connect:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    :goto_1
    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "BluetoothController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$action:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_4

    const-string v2, "succeeded"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_1

    :cond_4
    const-string v2, "failed"

    goto :goto_2
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1    # I

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
