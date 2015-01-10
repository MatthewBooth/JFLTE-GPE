.class Lcom/android/systemui/statusbar/DragDownHelper$2;
.super Ljava/lang/Object;
.source "DragDownHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    # getter for: Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    invoke-static {v0}, Lcom/android/systemui/statusbar/DragDownHelper;->access$100(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    return-void
.end method
