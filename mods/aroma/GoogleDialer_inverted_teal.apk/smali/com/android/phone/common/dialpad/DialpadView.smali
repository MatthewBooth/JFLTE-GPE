.class public Lcom/android/phone/common/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIds:[I

.field private mCanDigitsBeEdited:Z

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private final mIsLandscape:Z

.field private final mIsRtl:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mRippleColor:Landroid/content/res/ColorStateList;

.field private mTranslateDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    sget-object v1, Lcom/android/phone/common/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0014

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f0e00c7
        0x7f0e00c3
        0x7f0e00b3
        0x7f0e00b4
        0x7f0e00b5
        0x7f0e00b6
        0x7f0e00b7
        0x7f0e00b8
        0x7f0e00b9
        0x7f0e00ba
        0x7f0e00c6
        0x7f0e00c5
    .end array-data
.end method

.method private getKeyButtonAnimationDelay(I)I
    .locals 6
    .param p1    # I

    const/16 v4, 0xa5

    const/16 v3, 0x84

    const/16 v2, 0x63

    const/16 v1, 0x42

    const/16 v0, 0x21

    iget-boolean v5, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v5, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to get animation delay for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    goto :goto_1

    :pswitch_3
    move v0, v2

    goto :goto_1

    :pswitch_4
    move v0, v3

    goto :goto_1

    :pswitch_5
    move v0, v4

    goto :goto_1

    :pswitch_6
    const/16 v0, 0xc6

    goto :goto_1

    :pswitch_7
    const/16 v0, 0xe7

    goto :goto_1

    :pswitch_8
    const/16 v0, 0x108

    goto :goto_1

    :pswitch_9
    const/16 v0, 0x129

    goto :goto_1

    :pswitch_a
    const/16 v0, 0x14a

    goto :goto_1

    :pswitch_b
    const/16 v0, 0x16b

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_1

    :pswitch_c
    goto :goto_0

    :pswitch_d
    move v0, v4

    goto :goto_1

    :pswitch_e
    move v0, v1

    goto :goto_1

    :pswitch_f
    move v0, v2

    goto :goto_1

    :pswitch_10
    move v0, v3

    goto :goto_1

    :pswitch_11
    const/16 v0, 0xc6

    goto :goto_1

    :pswitch_12
    const/16 v0, 0xe7

    goto :goto_1

    :pswitch_13
    const/16 v0, 0x108

    goto :goto_1

    :pswitch_14
    const/16 v0, 0x129

    goto :goto_1

    :pswitch_15
    const/16 v0, 0x14a

    goto :goto_1

    :pswitch_16
    const/16 v0, 0x16b

    goto :goto_1

    :cond_1
    packed-switch p1, :pswitch_data_2

    :pswitch_17
    goto :goto_0

    :pswitch_18
    move v0, v1

    goto :goto_1

    :pswitch_19
    move v0, v2

    goto :goto_1

    :pswitch_1a
    move v0, v3

    goto :goto_1

    :pswitch_1b
    move v0, v4

    goto :goto_1

    :pswitch_1c
    const/16 v0, 0xc6

    goto :goto_1

    :pswitch_1d
    const/16 v0, 0xe7

    goto :goto_1

    :pswitch_1e
    const/16 v0, 0x108

    goto :goto_1

    :pswitch_1f
    const/16 v0, 0x129

    goto :goto_1

    :pswitch_20
    const/16 v0, 0x14a

    goto :goto_1

    :pswitch_21
    const/16 v0, 0x16b

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0e00b3
        :pswitch_5
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_2
        :pswitch_b
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0e00b3
        :pswitch_d
        :pswitch_14
        :pswitch_e
        :pswitch_11
        :pswitch_15
        :pswitch_f
        :pswitch_12
        :pswitch_16
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1
        :pswitch_c
        :pswitch_16
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0e00b3
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1
        :pswitch_17
        :pswitch_21
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method private getKeyButtonAnimationDuration(I)I
    .locals 4
    .param p1    # I

    const/16 v2, 0x14a

    const/16 v1, 0x129

    const/16 v0, 0x108

    iget-boolean v3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v3, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to get animation duration for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    goto :goto_1

    :pswitch_3
    move v0, v2

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_1

    :pswitch_6
    move v0, v2

    goto :goto_1

    :cond_1
    packed-switch p1, :pswitch_data_2

    :pswitch_7
    goto :goto_0

    :pswitch_8
    move v0, v2

    goto :goto_1

    :pswitch_9
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0e00b3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0e00b3
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0e00b3
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setupKeypad()V
    .locals 13

    const/16 v11, 0xc

    new-array v4, v11, [I

    fill-array-data v4, :array_0

    new-array v2, v11, [I

    fill-array-data v2, :array_1

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v1, 0x0

    :goto_0
    iget-object v11, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v11, v11

    if-ge v1, v11, :cond_2

    iget-object v11, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v11, v11, v1

    invoke-virtual {p0, v11}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v11, 0x7f0e00c1

    invoke-virtual {v0, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v11, 0x7f0e00c2

    invoke-virtual {v0, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aget v11, v4, v1

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f020011

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/RippleDrawable;

    iget-object v11, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    invoke-virtual {v0, v5}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_1

    aget v11, v2, v1

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v11, 0x7f0e00c3

    invoke-virtual {p0, v11}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v11, 0x7f08003f

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    const v11, 0x7f0e00c7

    invoke-virtual {p0, v11}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v11, 0x7f08003e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f080024
        0x7f080025
        0x7f080026
        0x7f080027
        0x7f080028
        0x7f080029
        0x7f08002a
        0x7f08002b
        0x7f08002c
        0x7f08002d
        0x7f08002e
        0x7f08002f
    .end array-data

    :array_1
    .array-data 4
        0x7f080030
        0x7f080031
        0x7f080032
        0x7f080033
        0x7f080034
        0x7f080035
        0x7f080036
        0x7f080037
        0x7f080038
        0x7f080039
        0x7f08003a
        0x7f08003b
    .end array-data
.end method


# virtual methods
.method public animateShow()V
    .locals 11

    const/4 v10, 0x0

    new-instance v5, Lcom/android/phone/common/dialpad/DialpadView$1;

    invoke-direct {v5, p0}, Lcom/android/phone/common/dialpad/DialpadView$1;-><init>(Lcom/android/phone/common/dialpad/DialpadView;)V

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v6, v6

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDelay(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe51eb851eb851fL

    mul-double/2addr v6, v8

    double-to-int v1, v6

    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDuration(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL

    mul-double/2addr v6, v8

    double-to-int v3, v6

    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-virtual {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    :goto_1
    iget v7, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationX(F)V

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :goto_2
    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    iget v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationY(F)V

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadView;->setupKeypad()V

    const v0, 0x7f0e00cb

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const v0, 0x7f0e00cc

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f0e00ca

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public setCanDigitsBeEdited(Z)V
    .locals 6
    .param p1    # Z

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f0e00cc

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0e00ca

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0e00cb

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setClickable(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mCanDigitsBeEdited:Z

    return-void

    :cond_1
    move v3, v5

    goto :goto_0
.end method
