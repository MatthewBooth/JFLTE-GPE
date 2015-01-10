.class Lcom/android/systemui/egg/LLand$Params;
.super Ljava/lang/Object;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field public BOOST_DV:I

.field public BUILDING_HEIGHT_MIN:I

.field public BUILDING_WIDTH_MAX:I

.field public BUILDING_WIDTH_MIN:I

.field public CLOUD_SIZE_MAX:I

.field public CLOUD_SIZE_MIN:I

.field public G:I

.field public HUD_Z:F

.field public MAX_V:I

.field public OBSTACLE_GAP:I

.field public OBSTACLE_MIN:I

.field public OBSTACLE_PERIOD:I

.field public OBSTACLE_SPACING:I

.field public OBSTACLE_STEM_WIDTH:I

.field public OBSTACLE_WIDTH:I

.field public OBSTACLE_Z:F

.field public PLAYER_HIT_SIZE:I

.field public PLAYER_SIZE:I

.field public PLAYER_Z:F

.field public PLAYER_Z_BOOST:F

.field public SCENERY_Z:F

.field public STAR_SIZE_MAX:I

.field public STAR_SIZE_MIN:I

.field public TRANSLATION_PER_SEC:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1    # Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0c00c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    const v0, 0x7f0c00c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_SPACING:I

    iget v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_SPACING:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_PERIOD:I

    const v0, 0x7f0c00c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->BOOST_DV:I

    const v0, 0x7f0c00c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_HIT_SIZE:I

    const v0, 0x7f0c00c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_SIZE:I

    const v0, 0x7f0c00c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    const v0, 0x7f0c00c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    const v0, 0x7f0c00c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_GAP:I

    const v0, 0x7f0c00c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_MIN:I

    const v0, 0x7f0c00cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_HEIGHT_MIN:I

    const v0, 0x7f0c00c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_WIDTH_MIN:I

    const v0, 0x7f0c00ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_WIDTH_MAX:I

    const v0, 0x7f0c00cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->CLOUD_SIZE_MIN:I

    const v0, 0x7f0c00cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->CLOUD_SIZE_MAX:I

    const v0, 0x7f0c00d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->STAR_SIZE_MIN:I

    const v0, 0x7f0c00d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->STAR_SIZE_MAX:I

    const v0, 0x7f0c00d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->G:I

    const v0, 0x7f0c00d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->MAX_V:I

    const v0, 0x7f0c00d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->SCENERY_Z:F

    const v0, 0x7f0c00d5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    const v0, 0x7f0c00d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_Z:F

    const v0, 0x7f0c00d7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_Z_BOOST:F

    const v0, 0x7f0c00d8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->HUD_Z:F

    return-void
.end method
