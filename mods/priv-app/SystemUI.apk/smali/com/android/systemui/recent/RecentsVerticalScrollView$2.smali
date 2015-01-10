.class Lcom/android/systemui/recent/RecentsVerticalScrollView$2;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    # getter for: Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$000(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Lcom/android/systemui/recent/RecentsCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsCallback;->dismiss()V

    return-void
.end method
