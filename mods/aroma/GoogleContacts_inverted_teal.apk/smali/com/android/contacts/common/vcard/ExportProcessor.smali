.class public Lcom/android/contacts/common/vcard/ExportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "ExportProcessor.java"


# instance fields
.field private final mCallingActivity:Ljava/lang/String;

.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p3    # I
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iput p3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    iput-object p4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    return-void
.end method

.method private doCancelNotification()V
    .locals 7

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v3, 0x7f0b00d5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v6, v6, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v2, p1, p2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .locals 9
    .param p1    # Landroid/net/Uri;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f0b00d7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private runInternal()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v17, v0

    const/4 v10, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "VCardExport"

    const-string v5, "Export request is cancelled before handling the request"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_0
    if-eqz v24, :cond_1

    :try_start_1
    invoke-virtual/range {v24 .. v24}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v10

    :goto_1
    return-void

    :catch_0
    move-exception v12

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v22, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v16

    :try_start_4
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0b0031

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v23

    :goto_2
    new-instance v3, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    move/from16 v0, v23

    invoke-direct {v3, v4, v0, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v25, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v9, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialization of vCard composer failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0b00c9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_3
    if-eqz v25, :cond_4

    :try_start_7
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    goto/16 :goto_1

    :catch_1
    move-exception v12

    :try_start_8
    const-string v4, "VCardExport"

    const-string v5, "FileNotFoundException thrown"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0b00c8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_5
    if-eqz v24, :cond_6

    :try_start_9
    invoke-virtual/range {v24 .. v24}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v10

    goto/16 :goto_1

    :catch_2
    move-exception v12

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    :try_start_a
    invoke-static {v14}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v23

    goto/16 :goto_2

    :catch_3
    move-exception v12

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    :try_start_b
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0b00ca

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_9
    if-eqz v25, :cond_a

    :try_start_c
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    goto/16 :goto_1

    :catch_4
    move-exception v12

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const/4 v11, 0x1

    :goto_6
    :try_start_d
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "VCardExport"

    const-string v5, "Export request is cancelled during composing vCard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_c
    if-eqz v25, :cond_d

    :try_start_e
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    goto/16 :goto_1

    :catch_5
    move-exception v12

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    :try_start_f
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    rem-int/lit8 v4, v11, 0x64

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v11}, Lcom/android/contacts/common/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :catch_6
    move-exception v12

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read a contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0b00cb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_10
    if-eqz v25, :cond_11

    :try_start_11
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    goto/16 :goto_1

    :catch_7
    move-exception v12

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    :try_start_12
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully finished exporting vCard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    const/16 v18, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0b00d4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_13
    if-eqz v25, :cond_14

    :try_start_13
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    goto/16 :goto_1

    :catch_8
    move-exception v12

    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_0
    move-exception v4

    move-object v3, v10

    :goto_a
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_15
    if-eqz v24, :cond_16

    :try_start_14
    invoke-virtual/range {v24 .. v24}, Ljava/io/Writer;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    :cond_16
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    throw v4

    :catch_9
    move-exception v12

    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catchall_1
    move-exception v4

    goto :goto_a

    :catchall_2
    move-exception v4

    move-object/from16 v24, v25

    goto :goto_a
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1    # Z

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/common/vcard/ExportRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->runInternal()V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "VCardExport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "VCardExport"

    const-string v2, "RuntimeException thrown during export"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
