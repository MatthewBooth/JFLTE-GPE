.class Lcom/android/systemui/SearchPanelView$2;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelView;->startAbortAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mCircle:Lcom/android/systemui/SearchPanelCircleView;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/SearchPanelCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->setAnimatingOut(Z)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    return-void
.end method
