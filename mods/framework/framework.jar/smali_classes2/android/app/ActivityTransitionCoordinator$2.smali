.class Landroid/app/ActivityTransitionCoordinator$2;
.super Ljava/lang/Object;
.source "ActivityTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionCoordinator;->scheduleGhostVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/app/ActivityTransitionCoordinator;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$2;->this$0:Landroid/app/ActivityTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator$2;->val$decorView:Landroid/view/View;

    iput p3, p0, Landroid/app/ActivityTransitionCoordinator$2;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$2;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$2;->this$0:Landroid/app/ActivityTransitionCoordinator;

    iget v1, p0, Landroid/app/ActivityTransitionCoordinator$2;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->setGhostVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method
