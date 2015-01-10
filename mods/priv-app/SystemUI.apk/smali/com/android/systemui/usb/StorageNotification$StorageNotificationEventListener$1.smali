.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$1;
.super Ljava/lang/Object;
.source "StorageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

.field final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$1;->this$1:Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

    iput-boolean p2, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$1;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$1;->this$1:Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-boolean v1, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener$1;->val$connected:Z

    # invokes: Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;Z)V

    return-void
.end method
