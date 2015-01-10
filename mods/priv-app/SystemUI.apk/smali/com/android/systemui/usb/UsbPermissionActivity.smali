.class public Lcom/android/systemui/usb/UsbPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPermissionGranted:Z

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "device"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbDevice;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const-string v7, "accessory"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v7, "android.intent.extra.UID"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    const-string v7, "package"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v7, :cond_0

    const v7, 0x7f0b0028

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v7, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    :goto_0
    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v7, 0x1040000

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x109002f

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x10202cc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v8, 0x7f0b002f

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(I)V

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x10202cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->setupAlert()V

    :goto_2
    return-void

    :catch_0
    move-exception v3

    const-string v7, "UsbPermissionActivity"

    const-string v8, "unable to look up package name"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->finish()V

    goto :goto_2

    :cond_0
    const v7, 0x7f0b0027

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v7, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v8, 0x7f0b002e

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 7

    const-string v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v5, :cond_0

    const-string v5, "device"

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v3, v5, v6}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v4}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v5, :cond_1

    const-string v5, "accessory"

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v3, v5, v6}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v4}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    :cond_1
    const-string v5, "permission"

    iget-boolean v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v1

    const-string v5, "UsbPermissionActivity"

    const-string v6, "PendingIntent was cancelled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "UsbPermissionActivity"

    const-string v6, "IUsbService connection failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
