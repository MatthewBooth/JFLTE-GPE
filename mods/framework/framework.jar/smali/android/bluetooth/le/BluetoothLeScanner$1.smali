.class Landroid/bluetooth/le/BluetoothLeScanner$1;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeScanner;

.field final synthetic val$callback:Landroid/bluetooth/le/ScanCallback;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->val$errorCode:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    return-void
.end method
