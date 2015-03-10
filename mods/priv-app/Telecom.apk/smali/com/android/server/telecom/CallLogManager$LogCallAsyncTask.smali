.class final Lcom/android/server/telecom/CallLogManager$LogCallAsyncTask;
.super Landroid/os/AsyncTask;
.source "CallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CallLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogCallAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/telecom/CallLogManager$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/CallLogManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/CallLogManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallLogManager$LogCallAsyncTask;-><init>(Lcom/android/server/telecom/CallLogManager;)V

    return-void
.end method

.method private static varargs doInBackground([Lcom/android/server/telecom/CallLogManager$AddCallArgs;)[Landroid/net/Uri;
    .locals 18

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move v15, v2

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v2, p0, v15

    :try_start_0
    iget-object v3, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->context:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->presentation:I

    iget v7, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->callType:I

    iget v8, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->features:I

    iget-object v9, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-wide v10, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->timestamp:J

    iget v12, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->durationInSec:I

    iget-object v13, v2, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->dataUsage:Ljava/lang/Long;

    const/4 v14, 0x1

    invoke-static/range {v3 .. v14}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v17, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_0

    :catch_0
    move-exception v2

    # getter for: Lcom/android/server/telecom/CallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/CallLogManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception raised during adding CallLog entry."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v2, v17, v15

    goto :goto_1

    :cond_0
    return-object v17
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/server/telecom/CallLogManager$AddCallArgs;

    invoke-static {p1}, Lcom/android/server/telecom/CallLogManager$LogCallAsyncTask;->doInBackground([Lcom/android/server/telecom/CallLogManager$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    check-cast p1, [Landroid/net/Uri;

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    if-nez v3, :cond_0

    # getter for: Lcom/android/server/telecom/CallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/CallLogManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to write call to the log."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
