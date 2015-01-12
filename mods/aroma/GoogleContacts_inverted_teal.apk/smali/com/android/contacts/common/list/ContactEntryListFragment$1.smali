.class Lcom/android/contacts/common/list/ContactEntryListFragment$1;
.super Landroid/os/Handler;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V

    :cond_0
    return-void
.end method
