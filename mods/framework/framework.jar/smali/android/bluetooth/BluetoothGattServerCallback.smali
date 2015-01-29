.class public abstract Landroid/bluetooth/BluetoothGattServerCallback;
.super Ljava/lang/Object;
.source "BluetoothGattServerCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
    .param p2    # I
    .param p3    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4    # Z
    .param p5    # Z
    .param p6    # I
    .param p7    # [B

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/bluetooth/BluetoothGattDescriptor;

    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
    .param p2    # I
    .param p3    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4    # Z
    .param p5    # Z
    .param p6    # I
    .param p7    # [B

    return-void
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
    .param p2    # I
    .param p3    # Z

    return-void
.end method

.method public onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
    .param p2    # I

    return-void
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/bluetooth/BluetoothGattService;

    return-void
.end method
