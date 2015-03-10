.class final Lcom/android/server/telecom/CallLogManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "CallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/CallLogManager$LogCallAsyncTask;,
        Lcom/android/server/telecom/CallLogManager$AddCallArgs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/CallLogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/CallLogManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/CallLogManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/CallLogManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final logCall(Lcom/android/server/telecom/Call;I)V
    .locals 13

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getAgeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getOriginalHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    sget-object v0, Lcom/android/server/telecom/CallLogManager;->TAG:Ljava/lang/String;

    const-string v1, "logNumber set to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getVideoStateHistory()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/telecom/CallLogManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/CallLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v5, 0x7f060000

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.server.telecom.intent.action.CALLS_ADD_ENTRY"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "callType"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "duration"

    invoke-virtual {v1, v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/telecom/CallLogManager;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.PROCESS_CALLLOG_INFO"

    invoke-virtual {v5, v1, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/telecom/CallLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Logging Calllog entry: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;

    iget-object v1, p0, Lcom/android/server/telecom/CallLogManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/server/telecom/CallLogManager$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V

    new-instance v1, Lcom/android/server/telecom/CallLogManager$LogCallAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/telecom/CallLogManager$LogCallAsyncTask;-><init>(Lcom/android/server/telecom/CallLogManager;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/telecom/CallLogManager$AddCallArgs;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallLogManager$LogCallAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v3, v0

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    sget-object v0, Lcom/android/server/telecom/CallLogManager;->TAG:Ljava/lang/String;

    const-string v1, "Not adding emergency call to call log."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x7

    if-eq p3, v3, :cond_0

    const/16 v3, 0x8

    if-ne p3, v3, :cond_3

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v2, v1

    :cond_1
    if-eqz v3, :cond_2

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/CallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    :cond_2
    return-void

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    if-ne p2, v5, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method
