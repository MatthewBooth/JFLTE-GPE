.class Lcom/android/dialer/list/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/SearchFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/SearchFragment$1;->this$0:Lcom/android/dialer/list/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment$1;->this$0:Lcom/android/dialer/list/SearchFragment;

    # getter for: Lcom/android/dialer/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;
    invoke-static {v0}, Lcom/android/dialer/list/SearchFragment;->access$000(Lcom/android/dialer/list/SearchFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/dialer/list/OnListFragmentScrolledListener;->onListFragmentScrollStateChange(I)V

    return-void
.end method
