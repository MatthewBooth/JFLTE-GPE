.class Lcom/android/systemui/usb/UsbStorageActivity$4;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$4;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$4;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity$4;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    # getter for: Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v1}, Lcom/android/systemui/usb/UsbStorageActivity;->access$300(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    # invokes: Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->access$100(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    return-void
.end method
