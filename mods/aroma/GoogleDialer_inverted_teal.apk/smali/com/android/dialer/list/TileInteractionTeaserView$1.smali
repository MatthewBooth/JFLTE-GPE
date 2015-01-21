.class Lcom/android/dialer/list/TileInteractionTeaserView$1;
.super Ljava/lang/Object;
.source "TileInteractionTeaserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/TileInteractionTeaserView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/TileInteractionTeaserView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/TileInteractionTeaserView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/TileInteractionTeaserView$1;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView$1;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # invokes: Lcom/android/dialer/list/TileInteractionTeaserView;->startDestroyAnimation()V
    invoke-static {v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$000(Lcom/android/dialer/list/TileInteractionTeaserView;)V

    return-void
.end method
