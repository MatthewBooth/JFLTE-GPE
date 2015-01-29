.class public Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlowManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/PointCloud;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/multiwaveview/PointCloud;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->this$0:Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->radius:F

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->alpha:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F
    .locals 1
    .param p0    # Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->x:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F
    .locals 1
    .param p0    # Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->y:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F
    .locals 1
    .param p0    # Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->radius:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F
    .locals 1
    .param p0    # Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->alpha:F

    return v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->alpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->radius:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->alpha:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->radius:F

    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->y:F

    return-void
.end method
