.class Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;
.super Landroid/database/MergeCursor;
.source "ProfileAndContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ProfileAndContactsLoader;

.field final synthetic val$contactsCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .param p2    # [Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;->this$0:Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    iput-object p3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-direct {p0, p2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
