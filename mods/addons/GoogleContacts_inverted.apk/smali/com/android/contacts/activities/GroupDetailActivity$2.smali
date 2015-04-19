.class Lcom/android/contacts/activities/GroupDetailActivity$2;
.super Ljava/lang/Object;
.source "GroupDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/GroupDetailActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupDetailActivity;

.field final synthetic val$accountType:Lcom/android/contacts/common/model/account/AccountType;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupDetailActivity;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->val$accountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    # getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/GroupDetailActivity;->access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/android/contacts/group/GroupDetailFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->val$accountType:Lcom/android/contacts/common/model/account/AccountType;

    iget-object v2, v2, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->val$accountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v2, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
