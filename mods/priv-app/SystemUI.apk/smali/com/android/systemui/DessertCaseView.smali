.class public Lcom/android/systemui/DessertCaseView;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DessertCaseView$RescalingContainer;
    }
.end annotation


# static fields
.field private static final ALPHA_MASK:[F

.field private static final MASK:[F

.field private static final NUM_PASTRIES:I

.field private static final PASTRIES:[I

.field private static final RARE_PASTRIES:[I

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE_MASK:[F

.field private static final XRARE_PASTRIES:[I

.field private static final XXRARE_PASTRIES:[I


# instance fields
.field hsv:[F

.field private mCellSize:I

.field private mCells:[Landroid/view/View;

.field private mColumns:I

.field private mDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mJuggle:Ljava/lang/Runnable;

.field private mRows:I

.field private mStarted:Z

.field private mWidth:I

.field private final tmpSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x14

    const-class v0, Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    sget-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    array-length v0, v0

    sget-object v1, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/DessertCaseView;->MASK:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/DessertCaseView;->WHITE_MASK:[F

    return-void

    :array_0
    .array-data 4
        0x7f020019
        0x7f02000b
    .end array-data

    :array_1
    .array-data 4
        0x7f02000c
        0x7f02000e
        0x7f020010
        0x7f020012
        0x7f020013
        0x7f020014
        0x7f020015
        0x7f020017
    .end array-data

    :array_2
    .array-data 4
        0x7f02001a
        0x7f02000f
        0x7f020011
        0x7f020018
    .end array-data

    :array_3
    .array-data 4
        0x7f02001b
        0x7f02000d
        0x7f020016
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        0x3f800000
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        0x0
        0x0
        0x0
        0x3f800000
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        0x0
        0x0
        0x0
        0x0
        0x437f0000
        -0x40800000
        0x0
        0x0
        0x0
        0x437f0000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v13, Landroid/util/SparseArray;

    sget v14, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    invoke-direct {v13, v14}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/systemui/DessertCaseView$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/DessertCaseView$1;-><init>(Lcom/android/systemui/DessertCaseView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    const/4 v13, 0x3

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/DessertCaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    const v13, 0x7f0c0052

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    const/16 v14, 0x200

    if-ge v13, v14, :cond_0

    const/4 v13, 0x2

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    const/4 v9, 0x0

    const/4 v13, 0x4

    new-array v1, v13, [[I

    const/4 v13, 0x0

    sget-object v14, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    aput-object v14, v1, v13

    const/4 v13, 0x1

    sget-object v14, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    aput-object v14, v1, v13

    const/4 v13, 0x2

    sget-object v14, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    aput-object v14, v1, v13

    const/4 v13, 0x3

    sget-object v14, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    aput-object v14, v1, v13

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v8, v1, v5

    move-object v2, v8

    array-length v7, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget v12, v2, v4

    iput-object v9, v10, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v11, v12, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v9}, Lcom/android/systemui/DessertCaseView;->convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v3, v11, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v14, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    invoke-direct {v13, v14}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {v13, v12, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
        0x3f59999a
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/DessertCaseView;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/DessertCaseView;

    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/DessertCaseView;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/systemui/DessertCaseView;

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/DessertCaseView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/systemui/DessertCaseView;

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0    # Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/DessertCaseView;->MASK:[F

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method static frand()F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static frand(FF)F
    .locals 2
    .param p0    # F
    .param p1    # F

    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method private getOccupied(Landroid/view/View;)[Landroid/graphics/Point;
    .locals 10
    .param p1    # Landroid/view/View;

    const v7, 0x2000002

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v7, 0x2000001

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    if-eqz v4, :cond_0

    if-nez v6, :cond_2

    :cond_0
    const/4 v7, 0x0

    new-array v5, v7, [Landroid/graphics/Point;

    :cond_1
    return-object v5

    :cond_2
    mul-int v7, v6, v6

    new-array v5, v7, [Landroid/graphics/Point;

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_1

    const/4 v1, 0x0

    move v3, v2

    :goto_1
    if-ge v1, v6, :cond_3

    add-int/lit8 v2, v3, 0x1

    new-instance v7, Landroid/graphics/Point;

    iget v8, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v1

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v5, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0
.end method

.method static irand(II)I
    .locals 2
    .param p0    # I
    .param p1    # I

    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/DessertCaseView;->frand(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private final makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1    # Landroid/view/View;

    new-instance v0, Lcom/android/systemui/DessertCaseView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DessertCaseView$3;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public fillFreeList()V
    .locals 1

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    return-void
.end method

.method public declared-synchronized fillFreeList(I)V
    .locals 14
    .param p1    # I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v11, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    invoke-direct {v5, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v11, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v11, v4

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    if-nez v10, :cond_0

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/systemui/DessertCaseView$2;

    invoke-direct {v10, p0, v8}, Lcom/android/systemui/DessertCaseView$2;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->random_color()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v9

    const v10, 0x3a03126f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v8}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget v10, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0, v8, v5}, Lcom/android/systemui/DessertCaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v6, v10}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    if-lez p1, :cond_0

    const v10, 0x2000002

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v7, v10

    const/high16 v10, 0x3f000000

    mul-float/2addr v10, v7

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    const/high16 v10, 0x3f000000

    mul-float/2addr v10, v7

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    int-to-long v12, p1

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_2
    const v10, 0x3ba3d70a

    cmpg-float v10, v9, v10

    if-gez v10, :cond_3

    :try_start_1
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    const/high16 v10, 0x3f000000

    cmpg-float v10, v9, v10

    if-gez v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    const v10, 0x3f333333

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    monitor-exit p0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 8
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/high16 v7, 0x3f000000

    const/high16 v6, 0x3e800000

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    if-ne v3, p1, :cond_1

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->stop()V

    :cond_2
    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iput p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->removeAllViewsInLayout()V

    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    const/high16 v3, 0x3e800000

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setScaleX(F)V

    const/high16 v3, 0x3e800000

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setScaleY(F)V

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v5, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    mul-float/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setTranslationX(F)V

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v5, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    mul-float/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setTranslationY(F)V

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    if-ge v1, v3, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method pick([I)I
    .locals 4
    .param p1    # [I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, p1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    aget v0, p1, v0

    return v0
.end method

.method public declared-synchronized place(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 27
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Point;
    .param p3    # Z

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v12

    const v19, 0x2000001

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v4

    array-length v9, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v10, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v19, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0x0

    aput-object v21, v19, v20

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x1

    const v19, 0x3c23d70a

    cmpg-float v19, v12, v19

    if-gez v19, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v19

    if-ge v5, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    const/4 v14, 0x4

    :cond_1
    :goto_1
    const v19, 0x2000001

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v19, 0x2000002

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->clear()V

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v11

    move-object v4, v11

    array-length v9, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_5

    aget-object v10, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v19, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v20, v20, v21

    aget-object v18, v19, v20

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const v19, 0x3dcccccd

    cmpg-float v19, v12, v19

    if-gez v19, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    if-ge v5, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    const/4 v14, 0x3

    goto :goto_1

    :cond_4
    const v19, 0x3ea8f5c3

    cmpg-float v19, v12, v19

    if-gez v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_1

    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v4

    array-length v9, v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_7

    aget-object v17, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0x0

    aput-object v21, v19, v20

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_6

    const v19, 0x2000001

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p3, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f000000

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f000000

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    new-instance v20, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    new-instance v20, Lcom/android/systemui/DessertCaseView$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/DessertCaseView$4;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView;->removeView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_9
    move-object v4, v11

    array-length v9, v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v9, :cond_a

    aget-object v10, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v19, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v20, v20, v21

    aput-object p1, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42b40000

    mul-float v13, v19, v20

    if-eqz p3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    int-to-float v0, v14

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    int-to-float v0, v14

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v19, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v20, 0x1f4

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v13, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Landroid/view/View;->X:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v24, v0

    mul-int v24, v24, v5

    add-int/lit8 v25, v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    sget-object v21, Landroid/view/View;->Y:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v24, v0

    mul-int v24, v24, v8

    add-int/lit8 v25, v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    monitor-exit p0

    return-void

    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v19, v0

    mul-int v19, v19, v5

    add-int/lit8 v20, v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v19, v0

    mul-int v19, v19, v8

    add-int/lit8 v20, v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    int-to-float v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    int-to-float v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotation(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method public place(Landroid/view/View;Z)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    invoke-static {v3, v1}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    invoke-static {v3, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    return-void
.end method

.method random_color()I
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    const/16 v2, 0xc

    invoke-static {v4, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41f00000

    mul-float/2addr v2, v3

    aput v2, v1, v4

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public start()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
