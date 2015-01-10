.class Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "CastControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CastControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1    # Landroid/media/MediaRouter;
    .param p2    # Landroid/media/MediaRouter$RouteInfo;

    # getter for: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$100(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1    # Landroid/media/MediaRouter;
    .param p2    # Landroid/media/MediaRouter$RouteInfo;

    # getter for: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$100(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1    # Landroid/media/MediaRouter;
    .param p2    # Landroid/media/MediaRouter$RouteInfo;

    # getter for: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$100(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1    # Landroid/media/MediaRouter;
    .param p2    # I
    .param p3    # Landroid/media/MediaRouter$RouteInfo;

    # getter for: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$100(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1    # Landroid/media/MediaRouter;
    .param p2    # I
    .param p3    # Landroid/media/MediaRouter$RouteInfo;

    # getter for: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteUnselected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$100(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    return-void
.end method
