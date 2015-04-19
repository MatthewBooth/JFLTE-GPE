.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;
.super Landroid/os/AsyncTask;
.source "ConfirmAddDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersistTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/contacts/common/model/RawContactDeltaList;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 0
    .param p1    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p2    # Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/contacts/common/model/RawContactDeltaList;)Ljava/lang/Integer;
    .locals 12
    .param p1    # [Lcom/android/contacts/common/model/RawContactDeltaList;

    const/4 v11, 0x2

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aget-object v6, p1, v9

    if-nez v6, :cond_1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v10, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-static {v6, v10}, Lcom/android/contacts/common/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)V

    const/4 v7, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v8, v7, 0x1

    const/4 v10, 0x3

    if-ge v7, v10, :cond_0

    :try_start_0
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "com.android.contacts"

    invoke-virtual {v3, v10, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v9, 0x1

    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v9, "ConfirmAdd"

    const-string v10, "Problem persisting user edits"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v9, "ConfirmAdd"

    const-string v10, "Version consistency failed"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->doInBackground([Lcom/android/contacts/common/model/RawContactDeltaList;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1    # Ljava/lang/Integer;

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1800()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    const v3, 0x7f0b0161

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_2

    :goto_1
    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onSaveCompleted(Z)V
    invoke-static {v3, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_0

    const v3, 0x7f0b0162

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const v5, 0x7f0b0160

    invoke-virtual {v4, v5}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1702(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
