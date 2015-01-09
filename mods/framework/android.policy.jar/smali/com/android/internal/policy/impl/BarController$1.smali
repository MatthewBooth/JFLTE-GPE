.class Lcom/android/internal/policy/impl/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/BarController;->updateStateLw(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BarController;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BarController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController$1;->this$0:Lcom/android/internal/policy/impl/BarController;

    iput p2, p0, Lcom/android/internal/policy/impl/BarController$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController$1;->this$0:Lcom/android/internal/policy/impl/BarController;

    # invokes: Lcom/android/internal/policy/impl/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v2}, Lcom/android/internal/policy/impl/BarController;->access$000(Lcom/android/internal/policy/impl/BarController;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController$1;->this$0:Lcom/android/internal/policy/impl/BarController;

    # getter for: Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/BarController;->access$100(Lcom/android/internal/policy/impl/BarController;)I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/BarController$1;->val$state:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController$1;->this$0:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/BarController;->access$202(Lcom/android/internal/policy/impl/BarController;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
