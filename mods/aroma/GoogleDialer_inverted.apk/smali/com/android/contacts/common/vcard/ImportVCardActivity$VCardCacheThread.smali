.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mSource:[B

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 4
    .param p1    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2    # [Landroid/net/Uri;

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method private constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 22
    .param p1    # [B
    .param p2    # Landroid/net/Uri;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/16 v21, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v19, v18

    :goto_0
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v19, :cond_5

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v18, v19

    move-object v13, v14

    move-object v11, v12

    :cond_0
    :goto_1
    if-eqz v21, :cond_4

    const/4 v9, 0x2

    :goto_2
    new-instance v2, Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    :cond_1
    :try_start_5
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v18

    move-object/from16 v19, v18

    goto :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v18, v19

    move-object v13, v14

    move-object v11, v12

    goto :goto_1

    :catch_1
    move-exception v16

    move-object v14, v13

    move-object v12, v11

    :goto_3
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_4
    const/16 v21, 0x1

    if-eqz p1, :cond_2

    :try_start_7
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_5
    :try_start_8
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_9
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_a
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v11}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v13}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_b
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v18, :cond_0

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :cond_2
    :try_start_d
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v18

    goto :goto_5

    :catch_3
    move-exception v17

    move-object v13, v14

    move-object v11, v12

    :goto_6
    :try_start_e
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v18, :cond_3

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_f .. :try_end_f} :catch_4

    :cond_3
    :goto_8
    :try_start_10
    throw v2
    :try_end_10
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_10 .. :try_end_10} :catch_4

    :catch_4
    move-exception v15

    :goto_9
    const-string v2, "VCardImport"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto :goto_4

    :catch_6
    move-exception v3

    goto :goto_8

    :catch_7
    move-exception v15

    move-object v13, v14

    move-object v11, v12

    goto :goto_9

    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    move-object v11, v12

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object/from16 v18, v19

    move-object v13, v14

    move-object v11, v12

    goto :goto_7

    :catchall_4
    move-exception v2

    move-object v13, v14

    move-object v11, v12

    goto :goto_7

    :catchall_5
    move-exception v2

    move-object v13, v14

    goto :goto_7

    :catch_8
    move-exception v17

    move-object v13, v14

    goto :goto_6

    :catch_9
    move-exception v17

    goto :goto_6

    :catch_a
    move-exception v16

    move-object v14, v13

    goto/16 :goto_3

    :catch_b
    move-exception v16

    goto/16 :goto_3

    :cond_5
    move-object/from16 v18, v19

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_1
.end method

.method private copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const-string v7, "VCardImport"

    const-string v8, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v1, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    iget-boolean v7, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v7, :cond_2

    const-string v7, "VCardImport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Canceled during caching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    return-object v2

    :catch_0
    move-exception v3

    const-string v7, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v7, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_4
    throw v7

    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :cond_6
    if-eqz v4, :cond_7

    :try_start_7
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_6
    if-eqz v5, :cond_1

    :try_start_8
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    const-string v7, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v3

    const-string v7, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_4
    move-exception v3

    const-string v8, "VCardImport"

    const-string v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_5
    move-exception v3

    const-string v8, "VCardImport"

    const-string v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VCardImport"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    const-string v0, "VCardImport"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    return-void
.end method

.method public run()V
    .locals 23

    const-string v4, "VCardImport"

    const-string v5, "vCard cache thread starts running."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v9, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v13

    :try_start_4
    const-string v4, "VCardImport"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v5, 0x7f0800f5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    array-length v0, v8

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v3, v8, v16

    const/4 v15, 0x0

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "import_tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_6

    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v13

    :try_start_6
    const-string v4, "VCardImport"

    const-string v5, "OutOfMemoryError occured during caching vCard"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v22, 0x7f0800f3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    const v4, 0x7fffffff

    if-ne v9, v4, :cond_5

    :try_start_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exceeded cache limit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception v13

    :try_start_8
    const-string v4, "VCardImport"

    const-string v5, "IOException during caching vCard"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v22, 0x7f0800f2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_6
    if-nez v19, :cond_7

    :try_start_9
    const-string v4, "VCardImport"

    const-string v5, "destUri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    const-string v5, "VCardImport"

    const-string v6, "Finished caching vCard."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v6, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    throw v4

    :cond_7
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x1

    :try_start_a
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    const-string v4, "VCardImport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected multiple rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v4, "_display_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_9

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v12

    :cond_9
    if-eqz v11, :cond_a

    :try_start_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v12

    :cond_b
    const/4 v4, 0x0

    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    :try_end_c
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v20

    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_d

    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    if-eqz v11, :cond_c

    :try_start_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    :catch_3
    move-exception v13

    const-string v4, "VCardImport"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v5, 0x7f0800f5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :catch_4
    move-exception v13

    :try_start_f
    const-string v4, "VCardImport"

    const-string v5, "Unexpected IOException"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v5, 0x7f0800f2

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_d
    :try_start_10
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_e
    const-string v4, "VCardImport"

    const-string v5, "Empty import requests. Ignore it."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2
.end method
