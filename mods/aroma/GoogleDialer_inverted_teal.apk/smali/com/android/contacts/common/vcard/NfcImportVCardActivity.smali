.class public Lcom/android/contacts/common/vcard/NfcImportVCardActivity;
.super Landroid/app/Activity;
.source "NfcImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mRecord:Landroid/nfc/NdefRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startImport()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method createImportRequest()Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 21

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x1

    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    new-instance v19, Lcom/android/vcard/VCardParser_V21;

    invoke-direct/range {v19 .. v19}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v18, :cond_0

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_0
    move-object v13, v14

    move-object v11, v12

    :goto_0
    new-instance v2, Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f080112

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    :cond_1
    :goto_1
    return-object v2

    :catch_0
    move-exception v2

    move-object v13, v14

    move-object v11, v12

    goto :goto_0

    :catch_1
    move-exception v16

    move-object v14, v13

    move-object v12, v11

    :goto_2
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v9, 0x2

    new-instance v20, Lcom/android/vcard/VCardParser_V30;

    invoke-direct/range {v20 .. v20}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_6
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_7
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v18, :cond_2

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_2
    move-object/from16 v19, v20

    goto :goto_0

    :catch_2
    move-exception v17

    move-object v13, v14

    move-object v11, v12

    :goto_3
    const/4 v2, 0x0

    if-eqz v18, :cond_1

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v2

    move-object/from16 v19, v20

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v18, :cond_3

    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_b .. :try_end_b} :catch_7

    :cond_3
    :goto_5
    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_7

    :catch_5
    move-exception v15

    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Failed reading vcard data"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_1

    :catch_6
    move-exception v15

    :goto_6
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_7
    move-exception v15

    :goto_7
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Error parsing vcard"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_1

    :catch_8
    move-exception v3

    goto :goto_5

    :catch_9
    move-exception v15

    move-object v13, v14

    move-object v11, v12

    goto :goto_7

    :catch_a
    move-exception v15

    move-object v13, v14

    move-object v11, v12

    goto :goto_6

    :catchall_1
    move-exception v2

    move-object v11, v12

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v13, v14

    move-object v11, v12

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v13, v14

    move-object v11, v12

    move-object/from16 v19, v20

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v13, v14

    move-object/from16 v19, v20

    goto :goto_4

    :catchall_5
    move-exception v2

    move-object/from16 v19, v20

    goto :goto_4

    :catch_b
    move-exception v17

    move-object v13, v14

    goto :goto_3

    :catch_c
    move-exception v17

    goto :goto_3

    :catch_d
    move-exception v16

    move-object v14, v13

    goto/16 :goto_2

    :catch_e
    move-exception v16

    goto/16 :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startImport()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2    # I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "NfcImportVCardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknowon intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "text/x-vcard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "text/vcard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "NfcImportVCardActivity"

    const-string v6, "Not a vcard"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0

    :cond_2
    const-string v5, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    aget-object v3, v5, v7

    check-cast v3, Landroid/nfc/NdefMessage;

    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v7

    iput-object v5, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startImport()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object v5, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    goto :goto_1

    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v8}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/ExportRequest;

    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2    # I

    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2    # I

    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/vcard/ImportRequest;

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NfcImportVCardActivity"

    const-string v1, "Late import failure -- ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 4
    .param p1    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2    # I
    .param p3    # Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Late import -- ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2    # I
    .param p3    # Lcom/android/vcard/VCardEntry;
    .param p4    # I
    .param p5    # I

    return-void
.end method

.method public onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;-><init>(Lcom/android/contacts/common/vcard/NfcImportVCardActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;

    return-void
.end method
