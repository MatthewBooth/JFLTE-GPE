.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    # getter for: Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->access$000(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->checkFilterValidity(Z)V

    return-void
.end method
