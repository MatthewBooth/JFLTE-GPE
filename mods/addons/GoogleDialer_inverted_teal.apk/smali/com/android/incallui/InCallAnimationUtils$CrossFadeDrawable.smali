.class Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "InCallAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrossFadeDrawable"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mCrossFadeAlpha:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # [Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const-string v0, "crossFadeAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    const/16 v3, 0xff

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget v2, p0, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public getAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
