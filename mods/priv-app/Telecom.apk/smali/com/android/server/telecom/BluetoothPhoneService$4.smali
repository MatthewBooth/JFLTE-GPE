.class final Lcom/android/server/telecom/BluetoothPhoneService$4;
.super Ljava/lang/Object;
.source "BluetoothPhoneService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$4;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$4;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1002(Lcom/android/server/telecom/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$4;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1002(Lcom/android/server/telecom/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
