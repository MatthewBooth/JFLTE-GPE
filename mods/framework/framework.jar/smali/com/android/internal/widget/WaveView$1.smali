.class Lcom/android/internal/widget/WaveView$1;
.super Ljava/lang/Object;
.source "WaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/WaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/WaveView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/WaveView$1;->this$0:Lcom/android/internal/widget/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/WaveView$1;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockState:I
    invoke-static {v0}, Lcom/android/internal/widget/WaveView;->access$000(Lcom/android/internal/widget/WaveView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/WaveView$1;->this$0:Lcom/android/internal/widget/WaveView;

    # setter for: Lcom/android/internal/widget/WaveView;->mLockState:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/WaveView;->access$002(Lcom/android/internal/widget/WaveView;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/WaveView$1;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockState:I
    invoke-static {v0}, Lcom/android/internal/widget/WaveView;->access$000(Lcom/android/internal/widget/WaveView;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/WaveView$1;->this$0:Lcom/android/internal/widget/WaveView;

    # setter for: Lcom/android/internal/widget/WaveView;->mLockState:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/WaveView;->access$002(Lcom/android/internal/widget/WaveView;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/WaveView$1;->this$0:Lcom/android/internal/widget/WaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    return-void
.end method
