.class public Lcom/android/systemui/media/MediaProjectionPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "MediaProjectionPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPermanentGrant:Z

.field private mService:Landroid/media/projection/IMediaProjectionManager;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, v3, p3}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-interface {v1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iput-boolean p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, -0x1

    :try_start_0
    iget v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MediaProjectionPermissionActivity"

    const-string v2, "Error granting projection permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const-string v9, "media_projection"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget-object v9, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v9, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget v10, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v11, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Landroid/media/projection/IMediaProjectionManager;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, -0x1

    iget v10, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v11, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v9, "MediaProjectionPermissionActivity"

    const-string v10, "Error checking projection permissions"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v9, "MediaProjectionPermissionActivity"

    const-string v10, "unable to look up package name"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    const v9, 0x7f0b0142

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v9, 0x7f0b0145

    invoke-virtual {p0, v9}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v9, 0x1040000

    invoke-virtual {p0, v9}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v9, 0x7f04003f

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v9, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v10, 0x7f0e0109

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setupAlert()V

    goto/16 :goto_0
.end method
