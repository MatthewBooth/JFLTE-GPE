.class public abstract Landroid/bluetooth/BluetoothGattCallback;
.super Ljava/lang/Object;
.source "BluetoothGattCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3    # I

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3    # I

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3    # I

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3    # I

    return-void
.end method

.method public onMonitorRssi(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # I

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # I

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
    .param p2    # I

    return-void
.end method
