.class Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
.super Landroid/media/VolumeProvider;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$UserRouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionVolumeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaRouter$UserRouteInfo;


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$UserRouteInfo;III)V
    .locals 0
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$0:Landroid/media/MediaRouter$UserRouteInfo;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 2
    .param p1    # I

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;-><init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2
    .param p1    # I

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;-><init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
