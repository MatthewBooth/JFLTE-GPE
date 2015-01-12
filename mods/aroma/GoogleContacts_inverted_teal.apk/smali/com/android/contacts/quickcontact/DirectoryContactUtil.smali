.class public Lcom/android/contacts/quickcontact/DirectoryContactUtil;
.super Ljava/lang/Object;
.source "DirectoryContactUtil.java"


# direct methods
.method public static createCopy(Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const v1, 0x7f0b01d0

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2, p0, p1, v1, v2}, Lcom/android/contacts/ContactSaveService;->createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static isDirectoryContact(Lcom/android/contacts/common/model/Contact;)Z
    .locals 2
    .param p0    # Lcom/android/contacts/common/model/Contact;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getDirectoryExportSupport()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
