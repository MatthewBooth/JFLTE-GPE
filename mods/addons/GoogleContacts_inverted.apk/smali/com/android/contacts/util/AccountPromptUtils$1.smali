.class final Lcom/android/contacts/util/AccountPromptUtils$1;
.super Ljava/lang/Object;
.source "AccountPromptUtils.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/AccountPromptUtils;->getAccountManagerCallback(Landroid/app/Activity;)Landroid/accounts/AccountManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/util/AccountPromptUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/util/AccountPromptUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "setupSkipped"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/util/AccountPromptUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/contacts/util/AccountPromptUtils;->neverShowAccountPromptAgain(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/contacts/util/AccountPromptUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/AccountPromptUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Account setup error: account creation process canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    # getter for: Lcom/android/contacts/util/AccountPromptUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/AccountPromptUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Account setup error: No authenticator was registered for thisaccount type or the authenticator failed to respond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    # getter for: Lcom/android/contacts/util/AccountPromptUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/AccountPromptUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Account setup error: Authenticator experienced an I/O problem"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
