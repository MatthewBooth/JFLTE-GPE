.class Lcom/android/dialer/calllog/CallLogFragment$3;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->maybeAddFooterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/ListsFragment$HostInterface;

    invoke-interface {v0}, Lcom/android/dialer/list/ListsFragment$HostInterface;->showCallHistory()V

    return-void
.end method
