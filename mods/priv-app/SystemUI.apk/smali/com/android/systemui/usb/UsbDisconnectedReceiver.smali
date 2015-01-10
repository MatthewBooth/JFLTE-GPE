.class Lcom/android/systemui/usb/UsbDisconnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDisconnectedReceiver.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final mActivity:Landroid/app/Activity;

.field private mDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
    .param p2    # Landroid/hardware/usb/UsbAccessory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
    .param p2    # Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mDevice:Landroid/hardware/usb/UsbDevice;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "device"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "accessory"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
