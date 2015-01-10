.class Lcom/android/systemui/qs/QSDetailClipper$1;
.super Ljava/lang/Object;
.source "QSDetailClipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailClipper;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailClipper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    # getter for: Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->access$000(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    # getter for: Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->access$100(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    # getter for: Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/android/systemui/qs/QSDetailClipper;->access$000(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3fd6666666666666L

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :cond_0
    return-void
.end method
