.class final Lcom/android/server/telecom/BluetoothManager$1;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothManager$1;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$1;->this$0:Lcom/android/server/telecom/BluetoothManager;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/server/telecom/BluetoothManager;->access$002(Lcom/android/server/telecom/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "- Got BluetoothHeadset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager$1;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # getter for: Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothManager;->access$000(Lcom/android/server/telecom/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$1;->this$0:Lcom/android/server/telecom/BluetoothManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothManager;->access$002(Lcom/android/server/telecom/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
