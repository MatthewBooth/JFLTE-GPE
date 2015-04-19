.class public abstract Lcom/android/contacts/ContactsActivity;
.super Lcom/android/contacts/common/activity/TransactionSafeActivity;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/ContactSaveService$Listener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInjectedServices()Lcom/android/contacts/common/testing/InjectedServices;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/common/testing/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInjectedServices()Lcom/android/contacts/common/testing/InjectedServices;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/contacts/common/testing/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(I)Landroid/view/View;
    .locals 4
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onDestroy()V

    return-void
.end method

.method public onServiceCompleted(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
