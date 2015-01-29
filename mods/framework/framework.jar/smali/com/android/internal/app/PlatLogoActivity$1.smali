.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Landroid/view/View;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPaint:Landroid/graphics/Paint;

.field mShadow:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/Context;I)V
    .locals 1
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput p3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$size:I

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mShadow:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity$1;->setWillNotDraw(Z)V

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$1$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$1$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$1;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity$1;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    int-to-float v3, v1

    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    int-to-float v3, v2

    const/high16 v4, 0x3f400000

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    invoke-virtual {v0, v5, v5, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mPaint:Landroid/graphics/Paint;

    const v4, -0x555556

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mShadow:Landroid/graphics/Path;

    int-to-float v4, v2

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mShadow:Landroid/graphics/Path;

    int-to-float v4, v2

    iget v5, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$size:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x3fc00000

    int-to-float v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mShadow:Landroid/graphics/Path;

    iget v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$size:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mShadow:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x555556
    .end array-data
.end method
