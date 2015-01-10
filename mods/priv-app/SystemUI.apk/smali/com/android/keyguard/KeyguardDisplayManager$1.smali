.class Lcom/android/keyguard/KeyguardDisplayManager$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "KeyguardDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDisplayManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1    # Landroid/media/MediaRouter;
    .param p2    # Landroid/media/MediaRouter$RouteInfo;

    # getter for: Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z
    invoke-static {}, Lcom/android/keyguard/KeyguardDisplayManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoutePresentationDisplayChanged: info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    # getter for: Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1    # Landroid/media/MediaRouter;
    .param p2    # I
    .param p3    # Landroid/media/MediaRouter$RouteInfo;

    # getter for: Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z
    invoke-static {}, Lcom/android/keyguard/KeyguardDisplayManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteSelected: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    # getter for: Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1    # Landroid/media/MediaRouter;
    .param p2    # I
    .param p3    # Landroid/media/MediaRouter$RouteInfo;

    # getter for: Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z
    invoke-static {}, Lcom/android/keyguard/KeyguardDisplayManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteUnselected: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    # getter for: Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    return-void
.end method
