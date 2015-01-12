.class final Lcom/android/dialer/calllog/IntentProvider$2;
.super Lcom/android/dialer/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountHandle:Landroid/telecom/PhoneAccountHandle;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dialer/calllog/IntentProvider$2;->val$accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0}, Lcom/android/dialer/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;

    iget-object v0, p0, Lcom/android/dialer/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/calllog/IntentProvider$2;->val$accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, v1}, Lcom/android/contacts/common/CallUtil;->getVideoCallIntent(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
