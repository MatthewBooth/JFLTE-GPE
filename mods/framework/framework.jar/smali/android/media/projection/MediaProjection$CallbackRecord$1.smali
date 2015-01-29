.class Landroid/media/projection/MediaProjection$CallbackRecord$1;
.super Ljava/lang/Object;
.source "MediaProjection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/projection/MediaProjection$CallbackRecord;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/projection/MediaProjection$CallbackRecord;


# direct methods
.method constructor <init>(Landroid/media/projection/MediaProjection$CallbackRecord;)V
    .locals 0

    iput-object p1, p0, Landroid/media/projection/MediaProjection$CallbackRecord$1;->this$0:Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord$1;->this$0:Landroid/media/projection/MediaProjection$CallbackRecord;

    # getter for: Landroid/media/projection/MediaProjection$CallbackRecord;->mCallback:Landroid/media/projection/MediaProjection$Callback;
    invoke-static {v0}, Landroid/media/projection/MediaProjection$CallbackRecord;->access$200(Landroid/media/projection/MediaProjection$CallbackRecord;)Landroid/media/projection/MediaProjection$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    return-void
.end method
