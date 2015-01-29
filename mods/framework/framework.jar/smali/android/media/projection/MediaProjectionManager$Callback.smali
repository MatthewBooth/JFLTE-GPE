.class public abstract Landroid/media/projection/MediaProjectionManager$Callback;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onStart(Landroid/media/projection/MediaProjectionInfo;)V
.end method

.method public abstract onStop(Landroid/media/projection/MediaProjectionInfo;)V
.end method
