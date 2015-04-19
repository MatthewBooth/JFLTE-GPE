.class Lcom/android/dialer/calllog/CallLogAdapter$5;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAdapter;->inflateActionViewStub(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;

.field final synthetic val$views:Lcom/android/dialer/calllog/CallLogListItemViews;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter$5;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mOnReportButtonClickListener:Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->access$600(Lcom/android/dialer/calllog/CallLogAdapter;)Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mOnReportButtonClickListener:Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->access$600(Lcom/android/dialer/calllog/CallLogAdapter;)Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$5;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->number:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;->onReportButtonClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
