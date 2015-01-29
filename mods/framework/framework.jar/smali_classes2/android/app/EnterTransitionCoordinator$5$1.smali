.class Landroid/app/EnterTransitionCoordinator$5$1;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator$5;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/EnterTransitionCoordinator$5;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator$5;)V
    .locals 0

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$5$1;->this$1:Landroid/app/EnterTransitionCoordinator$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5$1;->this$1:Landroid/app/EnterTransitionCoordinator$5;

    iget-object v0, v0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$5$1;->this$1:Landroid/app/EnterTransitionCoordinator$5;

    iget-object v1, v1, Landroid/app/EnterTransitionCoordinator$5;->val$sharedElementState:Landroid/os/Bundle;

    # invokes: Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator;->access$200(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    return-void
.end method
