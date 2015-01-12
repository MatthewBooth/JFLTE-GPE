.class Lcom/android/contacts/widget/MultiShrinkScroller$5;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$5;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$5;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # invokes: Lcom/android/contacts/widget/MultiShrinkScroller;->expandHeader()V
    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$200(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    return-void
.end method
