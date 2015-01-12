.class Lcom/android/dialer/calllog/CallLogAdapter$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "CallLogAdapter.java"


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

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    move-object v0, p1

    check-cast v0, Lcom/android/dialer/calllog/CallLogListItemView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/android/dialer/calllog/CallLogAdapter;->handleRowExpanded(Lcom/android/dialer/calllog/CallLogListItemView;ZZ)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemView;ZZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
