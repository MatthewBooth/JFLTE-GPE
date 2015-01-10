.class final Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothPan;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pan:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;->val$pan:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;->val$pan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;->val$pan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
