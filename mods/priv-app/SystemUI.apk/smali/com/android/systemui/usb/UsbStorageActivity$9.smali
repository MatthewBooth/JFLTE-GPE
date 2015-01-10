.class Lcom/android/systemui/usb/UsbStorageActivity$9;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsers()V
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

    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$9;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$9;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    # invokes: Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsersAsync()V
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$900(Lcom/android/systemui/usb/UsbStorageActivity;)V

    return-void
.end method
