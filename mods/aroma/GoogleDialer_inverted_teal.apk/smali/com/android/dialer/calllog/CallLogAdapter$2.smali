.class Lcom/android/dialer/calllog/CallLogAdapter$2;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogListItemView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/android/dialer/calllog/CallLogAdapter;->handleRowExpanded(Lcom/android/dialer/calllog/CallLogListItemView;ZZ)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemView;ZZ)V

    return-void
.end method
