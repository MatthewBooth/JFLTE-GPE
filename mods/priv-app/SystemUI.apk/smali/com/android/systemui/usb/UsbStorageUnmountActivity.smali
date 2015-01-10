.class public Lcom/android/systemui/usb/UsbStorageUnmountActivity;
.super Landroid/app/Activity;
.source "UsbStorageUnmountActivity.java"


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method private unmountUsbStorages()V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "UsbStorageUnmountActivity"

    const-string v6, "Failed to unmount"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method


# virtual methods
.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    :cond_1
    const-string v1, "UsbStorageUnmountActivity"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "UsbStorageUnmountActivity"

    const-string v1, "onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->unmountUsbStorages()V

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "UsbStorageUnmountActivity"

    const-string v1, "onDestroy !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "UsbStorageUnmountActivity"

    const-string v1, "onPause !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "UsbStorageUnmountActivity"

    const-string v1, "onResume !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
