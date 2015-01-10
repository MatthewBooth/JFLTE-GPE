.class Lcom/android/systemui/usb/UsbStorageActivity$3;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;

.field final synthetic val$usbStorageInUse:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$3;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iput-boolean p2, p0, Lcom/android/systemui/usb/UsbStorageActivity$3;->val$usbStorageInUse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$3;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iget-boolean v1, p0, Lcom/android/systemui/usb/UsbStorageActivity$3;->val$usbStorageInUse:Z

    # invokes: Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplayAsync(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    return-void
.end method
