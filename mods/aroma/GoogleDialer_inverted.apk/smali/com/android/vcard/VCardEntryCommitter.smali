.class public Lcom/android/vcard/VCardEntryCommitter;
.super Ljava/lang/Object;
.source "VCardEntryCommitter.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCounter:I

.field private final mCreatedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToCommit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vCard"

    sput-object v0, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1    # Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iget-object v2, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCreatedUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onEnd()V
    .locals 6

    iget-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/vcard/VCardEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "time to commit entries: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 6
    .param p1    # Lcom/android/vcard/VCardEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    iget v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/vcard/VCardEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    :cond_0
    iget-wide v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
