.class public Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/ParameterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomData"
.end annotation


# instance fields
.field public final previewCrop:Landroid/graphics/Rect;

.field public final reportedCrop:Landroid/graphics/Rect;

.field public final zoomIndex:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/graphics/Rect;
    .param p3    # Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->zoomIndex:I

    iput-object p2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    iput-object p3, p0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->reportedCrop:Landroid/graphics/Rect;

    return-void
.end method
