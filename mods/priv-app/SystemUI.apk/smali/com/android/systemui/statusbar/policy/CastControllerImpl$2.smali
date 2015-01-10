.class Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;
.super Landroid/media/projection/MediaProjectionManager$Callback;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2
    .param p1    # Landroid/media/projection/MediaProjectionInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V

    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2
    .param p1    # Landroid/media/projection/MediaProjectionInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/policy/CastControllerImpl;->setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V

    return-void
.end method
