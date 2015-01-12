.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;
.super Landroid/os/AsyncTask;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInvitablesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
        "Lcom/android/contacts/common/model/account/AccountType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;
    .param p2    # Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 2
    .param p1    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    # getter for: Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->access$000(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->access$400(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    # getter for: Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->access$500(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    # getter for: Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->access$600(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
