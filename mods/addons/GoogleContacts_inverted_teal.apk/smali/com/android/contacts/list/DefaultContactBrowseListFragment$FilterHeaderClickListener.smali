.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p2    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V

    return-void
.end method
