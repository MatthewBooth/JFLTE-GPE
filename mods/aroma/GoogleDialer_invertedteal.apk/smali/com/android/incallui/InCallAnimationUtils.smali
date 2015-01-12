.class public Lcom/android/incallui/InCallAnimationUtils;
.super Ljava/lang/Object;
.source "InCallAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/InCallAnimationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallAnimationUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static newCrossFadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
    .param p1    # Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v1, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;

    invoke-direct {v1, v0}, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p0    # Landroid/widget/ImageView;
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v7

    :goto_0
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    move v4, v7

    :goto_1
    instance-of v6, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_4

    move-object v6, p2

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    move v5, v7

    :goto_2
    if-nez v3, :cond_0

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, p2

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    move v1, v7

    :goto_3
    if-nez v1, :cond_6

    invoke-static {p1, p2}, Lcom/android/incallui/InCallAnimationUtils;->newCrossFadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallAnimationUtils$CrossFadeDrawable;->getAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/incallui/InCallAnimationUtils$1;

    invoke-direct {v6, p1, p2, p0}, Lcom/android/incallui/InCallAnimationUtils$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    move v3, v8

    goto :goto_0

    :cond_3
    move v4, v8

    goto :goto_1

    :cond_4
    move v5, v8

    goto :goto_2

    :cond_5
    move v1, v8

    goto :goto_3

    :cond_6
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_4
.end method
