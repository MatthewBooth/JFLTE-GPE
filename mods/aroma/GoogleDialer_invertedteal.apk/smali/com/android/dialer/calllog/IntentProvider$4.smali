.class final Lcom/android/dialer/calllog/IntentProvider$4;
.super Lcom/android/dialer/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProvider(J[JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$extraIds:[J

.field final synthetic val$id:J

.field final synthetic val$voicemailUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[JJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$voicemailUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$extraIds:[J

    iput-wide p3, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$id:J

    invoke-direct {p0}, Lcom/android/dialer/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p1    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/CallDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$voicemailUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    iget-object v2, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$voicemailUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v1, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$extraIds:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$extraIds:[J

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, "EXTRA_CALL_LOG_IDS"

    iget-object v2, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$extraIds:[J

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method
