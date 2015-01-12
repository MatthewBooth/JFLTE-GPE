.class Lcom/android/dialer/calllog/CallLogAdapter$1;
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

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # invokes: Lcom/android/dialer/calllog/CallLogAdapter;->startActivityForAction(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;Landroid/view/View;)V

    return-void
.end method
