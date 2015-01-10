.class Lcom/android/systemui/usb/UsbStorageActivity$8;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$8;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iput-boolean p2, p0, Lcom/android/systemui/usb/UsbStorageActivity$8;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$8;->val$on:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$8;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    # getter for: Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$300(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$8;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    # getter for: Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$300(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_0
.end method
