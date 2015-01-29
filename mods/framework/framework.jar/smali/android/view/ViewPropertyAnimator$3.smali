.class Landroid/view/ViewPropertyAnimator$3;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$currentLayerType:I


# direct methods
.method constructor <init>(Landroid/view/ViewPropertyAnimator;I)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$3;->this$0:Landroid/view/ViewPropertyAnimator;

    iput p2, p0, Landroid/view/ViewPropertyAnimator$3;->val$currentLayerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$3;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v0, v0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, p0, Landroid/view/ViewPropertyAnimator$3;->val$currentLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
