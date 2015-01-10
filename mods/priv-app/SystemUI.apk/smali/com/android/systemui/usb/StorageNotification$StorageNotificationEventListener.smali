.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageNotificationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/usb/StorageNotification;
    .param p2    # Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/StorageNotification;

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$2;-><init>(Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/StorageNotification;

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$1;-><init>(Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
