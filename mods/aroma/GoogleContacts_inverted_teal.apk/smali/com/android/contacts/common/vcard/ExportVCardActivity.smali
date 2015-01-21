.class public Lcom/android/contacts/common/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ExportVCardActivity$1;,
        Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;,
        Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private final mIncomingMessenger:Landroid/os/Messenger;

.field private volatile mProcessOngoing:Z

.field private mService:Lcom/android/contacts/common/vcard/VCardService;

.field private mTargetFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;Lcom/android/contacts/common/vcard/ExportVCardActivity$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/common/vcard/ExportVCardActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/common/vcard/ExportVCardActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/contacts/common/vcard/ExportVCardActivity;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/common/vcard/ExportVCardActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/common/vcard/ExportVCardActivity;)Lcom/android/contacts/common/vcard/VCardService;
    .locals 1
    .param p0    # Lcom/android/contacts/common/vcard/ExportVCardActivity;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/vcard/ExportVCardActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method private declared-synchronized unbindAndFinish()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const v7, 0x7f0e000d

    const v6, 0x7f0e0001

    const v5, 0x7f0b00c7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "VCardExport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External storage is in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Cancelling export"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CALLING_ACTIVITY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CALLING_ACTIVITY"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "VCardExport"

    const-string v4, "Failed to start vCard service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {p0, v1, p0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VCardExport"

    const-string v4, "Failed to connect to vCard service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const v3, 0x7f0b00dc

    const v1, 0x7f0b00db

    const/4 v2, 0x1

    const v5, 0x104000a

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00de

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0b00cd

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_1
    aput-object v0, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00dd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00cd -> :sswitch_1
        0x7f0e0001 -> :sswitch_3
        0x7f0e000b -> :sswitch_0
        0x7f0e000d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # I
    .param p2    # Landroid/app/Dialog;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f0e000d

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0e000b

    if-ne p1, v0, :cond_1

    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0b00de

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->handleRequestAvailableExportDestination(Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    const-string v0, "VCardExport"

    const-string v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    :cond_0
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1    # Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
