.class Lcom/android/systemui/DessertCaseView$1;
.super Ljava/lang/Object;
.source "DessertCaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DessertCaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCaseView;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x1

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v4}, Lcom/android/systemui/DessertCaseView;->getChildCount()I

    move-result v1

    const/4 v0, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    int-to-double v8, v1

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/DessertCaseView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v4, v2, v10}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v4}, Lcom/android/systemui/DessertCaseView;->fillFreeList()V

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    # getter for: Lcom/android/systemui/DessertCaseView;->mStarted:Z
    invoke-static {v4}, Lcom/android/systemui/DessertCaseView;->access$000(Lcom/android/systemui/DessertCaseView;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    # getter for: Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/DessertCaseView;->access$200(Lcom/android/systemui/DessertCaseView;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    # getter for: Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/systemui/DessertCaseView;->access$100(Lcom/android/systemui/DessertCaseView;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
