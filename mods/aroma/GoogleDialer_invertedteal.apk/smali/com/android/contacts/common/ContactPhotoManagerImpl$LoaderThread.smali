.class Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreloadPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    iput-object p2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    # invokes: Lcom/android/contacts/common/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$400(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadUriBasedPhotos()V

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method private loadThumbnails(Z)V
    .locals 12
    .param p1    # Z

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "_id IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$500()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$600()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, -0x1

    # invokes: Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v6, p1, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v11, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$500()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, -0x1

    # invokes: Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    # invokes: Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v1, p1, v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    # invokes: Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v1, p1, v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private loadUriBasedPhotos()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    invoke-virtual {v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/common/ContactPhotoManager;->removeContactType(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v9, :cond_0

    const/16 v9, 0x4000

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    :cond_0
    :try_start_0
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const-string v9, "http"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "https"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    new-instance v9, Ljava/net/URL;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v3, v9}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    :goto_3
    const-string v9, "ContactPhotoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot load photo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-virtual {v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v10

    # invokes: Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v9, v4, v14, v13, v10}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v12

    # invokes: Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v9, v4, v10, v11, v12}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_4
    const-string v9, "ContactPhotoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot load photo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v12

    # invokes: Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v9, v4, v10, v11, v12}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private preloadPhotosInBackground()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    iget v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v3, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->queryPhotosForPreload()V

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iput v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto :goto_0

    :cond_1
    iput v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;
    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$200(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I
    invoke-static {v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$300(Lcom/android/contacts/common/ContactPhotoManagerImpl;)I

    move-result v4

    if-le v3, v4, :cond_3

    iput v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-direct {p0, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    if-nez v2, :cond_5

    iput v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    :cond_5
    const-string v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preloaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " photos.  Cached bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;
    invoke-static {v5}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->access$200(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto/16 :goto_0
.end method

.method private queryPhotosForPreload()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo_id"

    aput-object v4, v2, v3

    const-string v3, "photo_id NOT NULL AND photo_id!=0"

    const/4 v4, 0x0

    const-string v5, "starred DESC, last_time_contacted DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestPreloading()V
    .locals 4

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
