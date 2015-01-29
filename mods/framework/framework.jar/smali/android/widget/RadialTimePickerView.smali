.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$1;,
        Landroid/widget/RadialTimePickerView$IntHolder;,
        Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_AMPM_PRESSED:I = 0xff

.field private static final ALPHA_AMPM_SELECTED:I = 0x3c

.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_SELECTOR:I = 0x3c

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final AM:I = 0x0

.field private static final AMPM:I = 0x3

.field private static final CENTER_RADIUS:I = 0x2

.field private static final COSINE_30_DEGREES:F

.field private static final DEBUG:Z = false

.field private static final DEBUG_COLOR:I = 0x20ff0000

.field private static final DEBUG_STROKE_WIDTH:I = 0x2

.field private static final DEBUG_TEXT_COLOR:I = 0x60ff0000

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field private static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MINUTES:I = 0x1

.field private static final MINUTES_NUMBERS:[I

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SINE_30_DEGREES:F = 0.5f

.field private static final STATE_SET_SELECTED:[I

.field private static final TAG:Ljava/lang/String; = "ClockView"

.field private static sSnapPrefer30sMap:[I


# instance fields
.field private final mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

.field private final mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

.field private mAmOrPm:I

.field private mAmOrPmPressed:I

.field private mAmPmCircleRadius:I

.field private mAmPmCircleRadiusMultiplier:F

.field private mAmPmSelectedColor:I

.field private final mAmPmText:[Ljava/lang/String;

.field private mAmPmTextColor:I

.field private mAmPmUnselectedColor:I

.field private mAmPmYCenter:F

.field private mAnimationRadiusMultiplier:[F

.field private mCircleRadius:[F

.field private mCircleRadiusMultiplier:[F

.field private final mColor:[I

.field private final mColorSelector:[[I

.field private mDisabledAlpha:I

.field private mHalfwayHypotenusePoint:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private final mHoursToMinutesAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextGridHeights:[F

.field private mInnerTextGridWidths:[F

.field private mInnerTextHours:[Ljava/lang/String;

.field private mInnerTextSize:F

.field private mInputEnabled:Z

.field private mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mLeftIndicatorXCenter:F

.field private mLineLength:[I

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxHypotenuseForOuterNumber:I

.field private mMinHypotenuseForInnerNumber:I

.field private final mMinuteToHoursAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinutesTexts:[Ljava/lang/String;

.field private mNumbersRadiusMultiplier:[F

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private mOuterTextMinutes:[Ljava/lang/String;

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintAmPmCircle:[Landroid/graphics/Paint;

.field private final mPaintAmPmText:Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintDebug:Landroid/graphics/Paint;

.field private final mPaintDisabled:Landroid/graphics/Paint;

.field private final mPaintSelector:[[Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mRightIndicatorXCenter:F

.field private mSelectionDegrees:[I

.field private mSelectionRadius:[I

.field private mSelectionRadiusMultiplier:F

.field private mShowHours:Z

.field private mTextGridHeights:[[F

.field private mTextGridWidths:[[F

.field private mTextSize:[F

.field private mTextSizeMultiplier:[F

.field private mTransition:Landroid/animation/AnimatorSet;

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xc

    const-wide/high16 v0, 0x4008000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000

    mul-float/2addr v0, v1

    sput v0, Landroid/widget/RadialTimePickerView;->COSINE_30_DEGREES:F

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    sput-object v0, Landroid/widget/RadialTimePickerView;->STATE_SET_SELECTED:[I

    const/16 v0, 0x169

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    return-void

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v13, 0x2

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    const-class v14, Landroid/graphics/Paint;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x2

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x2

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    const-class v14, Landroid/widget/RadialTimePickerView$IntHolder;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintDisabled:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    const/4 v13, 0x3

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    const/4 v13, 0x2

    const/4 v14, 0x7

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v13, 0x2

    const/4 v14, 0x7

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    const/4 v13, 0x7

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    const/4 v13, 0x7

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    const/4 v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const/4 v13, 0x3

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v13, 0x3

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const/4 v13, 0x3

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    new-instance v13, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x1010033

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v11, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v13

    const/high16 v14, 0x437f0000

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->TimePicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v13, 0x7

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_0

    const v13, 0x10600ec

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_0
    const/16 v13, 0xc

    const v14, 0x10600eb

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const v13, 0x10100a1

    invoke-static {v3, v13, v4}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v3

    sget-object v13, Landroid/widget/RadialTimePickerView;->STATE_SET_SELECTED:[I

    invoke-virtual {v3, v13, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmPmUnselectedColor:I

    const/4 v13, 0x6

    const v14, 0x10600ea

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmPmTextColor:I

    const-string/jumbo v13, "sans-serif"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v13, v13

    if-ge v8, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v14, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v15, 0xff

    invoke-direct {v14, v15}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v13, v13

    if-ge v8, v13, :cond_3

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v13, v13, v8

    array-length v13, v13

    if-ge v9, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v13, v13, v8

    new-instance v14, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v15, 0xff

    invoke-direct {v14, v15}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v14, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x3

    const v14, 0x10600ea

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v14, 0x0

    aput v10, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v14, 0x1

    aput v10, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x5

    const v16, 0x10600ed

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x5

    const v16, 0x10600ed

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/high16 v14, 0x40000000

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x5

    const v16, 0x10600ed

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x5

    const v16, 0x10600ed

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x5

    const v16, 0x10600ed

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/high16 v14, 0x40000000

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x5

    const v16, 0x10600ed

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/RadialTimePickerView;->mAmPmTextColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v14, 0x4

    const v15, 0x10600ee

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initData()V

    const v13, 0x1040055

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    const v13, 0x1040056

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v14, 0x0

    const/4 v15, 0x7

    new-array v15, v15, [F

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v14, 0x1

    const/4 v15, 0x7

    new-array v15, v15, [F

    aput-object v15, v13, v14

    const v13, 0x104004d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setClickable(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    const/16 v13, 0xb

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v13, 0xc

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method private static calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 5
    .param p0    # Landroid/graphics/Paint;
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # [F
    .param p6    # [F

    move v0, p1

    sget v3, Landroid/widget/RadialTimePickerView;->COSINE_30_DEGREES:F

    mul-float v1, p1, v3

    const/high16 v3, 0x3f000000

    mul-float v2, p1, v3

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    const/4 v3, 0x0

    sub-float v4, p3, v0

    aput v4, p5, v3

    const/4 v3, 0x0

    sub-float v4, p2, v0

    aput v4, p6, v3

    const/4 v3, 0x1

    sub-float v4, p3, v1

    aput v4, p5, v3

    const/4 v3, 0x1

    sub-float v4, p2, v1

    aput v4, p6, v3

    const/4 v3, 0x2

    sub-float v4, p3, v2

    aput v4, p5, v3

    const/4 v3, 0x2

    sub-float v4, p2, v2

    aput v4, p6, v3

    const/4 v3, 0x3

    aput p3, p5, v3

    const/4 v3, 0x3

    aput p2, p6, v3

    const/4 v3, 0x4

    add-float v4, p3, v2

    aput v4, p5, v3

    const/4 v3, 0x4

    add-float v4, p2, v2

    aput v4, p6, v3

    const/4 v3, 0x5

    add-float v4, p3, v1

    aput v4, p5, v3

    const/4 v3, 0x5

    add-float v4, p2, v1

    aput v4, p6, v3

    const/4 v3, 0x6

    add-float v4, p3, v0

    aput v4, p5, v3

    const/4 v3, 0x6

    add-float v4, p2, v0

    aput v4, p6, v3

    return-void
.end method

.method private calculateGridSizesHours()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v4

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v8

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float v3, v0, v2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v2, v0, v7

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v0

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    invoke-static/range {v2 .. v8}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    :cond_0
    return-void
.end method

.method private calculateGridSizesMinutes()V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    return-void
.end method

.method private drawAmPm(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isLayoutRtl()Z

    move-result v2

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmPmUnselectedColor:I

    const/16 v0, 0xff

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmPmUnselectedColor:I

    const/16 v3, 0xff

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-nez v6, :cond_2

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    const/16 v0, 0x3c

    :cond_0
    :goto_0
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-nez v6, :cond_3

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    const/16 v0, 0xff

    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v6, v6, v11

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v6, v6, v11

    invoke-direct {p0, v1, v0}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v2, :cond_4

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    :goto_2
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    iget v8, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v9, v9, v11

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v6, v6, v10

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v6, v6, v10

    invoke-direct {p0, v4, v3}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v2, :cond_5

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    :goto_3
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    iget v8, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v9, v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmPmTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v5, v6, v7

    if-eqz v2, :cond_6

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v6, v6, v10

    :goto_4
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v6, v6, v11

    :goto_5
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v6, v10, :cond_0

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    const/16 v3, 0x3c

    goto/16 :goto_0

    :cond_3
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-ne v6, v10, :cond_1

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    const/16 v3, 0xff

    goto/16 :goto_1

    :cond_4
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    goto :goto_2

    :cond_5
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    goto :goto_3

    :cond_6
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v6, v6, v11

    goto :goto_4

    :cond_7
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v6, v6, v10

    goto :goto_5
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    mul-float v10, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    mul-float v7, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v8, v19, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v14, v19, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v12, v19, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v19, v10

    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v14, v12, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v8, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v14, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v12, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v5, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v14, v12, v5}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const-string v19, "%02d:%02d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    const/high16 v19, 0x60ff0000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v16

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v19

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    sub-float v6, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3fc00000

    mul-float v20, v20, v6

    add-float v18, v19, v20

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;I)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;I)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, p2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v3, v3, p2

    int-to-double v4, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    add-int v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v3, v3, p2

    int-to-double v4, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    sub-int v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v7, v2, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v11

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v4, v4, p2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    rem-int/lit8 v2, v2, 0x1e

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v7, v2, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v11

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v4, v4, p2

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v7, v2, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v2

    int-to-float v5, v11

    int-to-float v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v2, v2, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, p2

    sub-int v10, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-double v4, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    add-int v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-double v4, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    sub-int v12, v2, v3

    goto :goto_0
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # F
    .param p3    # Landroid/graphics/Typeface;
    .param p4    # [Ljava/lang/String;
    .param p5    # [F
    .param p6    # [F
    .param p7    # Landroid/graphics/Paint;
    .param p8    # I
    .param p9    # I

    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p8, p9}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget v1, p5, v1

    const/4 v2, 0x0

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v0, p4, v0

    const/4 v1, 0x4

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    aget-object v0, p4, v0

    const/4 v1, 0x5

    aget v1, p5, v1

    const/4 v2, 0x2

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x3

    aget-object v0, p4, v0

    const/4 v1, 0x6

    aget v1, p5, v1

    const/4 v2, 0x3

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x4

    aget-object v0, p4, v0

    const/4 v1, 0x5

    aget v1, p5, v1

    const/4 v2, 0x4

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x5

    aget-object v0, p4, v0

    const/4 v1, 0x4

    aget v1, p5, v1

    const/4 v2, 0x5

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x6

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget v1, p5, v1

    const/4 v2, 0x6

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x7

    aget-object v0, p4, v0

    const/4 v1, 0x2

    aget v1, p5, v1

    const/4 v2, 0x5

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0x8

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    const/4 v2, 0x4

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0x9

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x3

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0xa

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    const/4 v2, 0x2

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0xb

    aget-object v0, p4, v0

    const/4 v1, 0x2

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getDegreesFromXY(FF)I
    .locals 14
    .param p1    # F
    .param p2    # F

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v11, v11

    sub-float v11, p2, v11

    iget v12, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v12, v12

    sub-float v12, p2, v12

    mul-float/2addr v11, v12

    iget v12, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v12, v12

    sub-float v12, p1, v12

    iget v13, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v13, v13

    sub-float v13, p1, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    float-to-double v12, v11

    cmpl-double v11, v4, v12

    if-lez v11, :cond_0

    const/4 v11, -0x1

    :goto_0
    return v11

    :cond_0
    iget-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v11, :cond_5

    iget-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v11, :cond_5

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    int-to-double v12, v11

    cmpl-double v11, v4, v12

    if-ltz v11, :cond_3

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v12, v11

    cmpg-double v11, v4, v12

    if-gtz v11, :cond_3

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    :cond_1
    :goto_1
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v11, v11

    sub-float v11, p2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v12, v8

    div-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v11, v11

    cmpl-float v11, p1, v11

    if-lez v11, :cond_7

    const/4 v9, 0x1

    :goto_2
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v11, v11

    cmpg-float v11, p2, v11

    if-gez v11, :cond_8

    const/4 v10, 0x1

    :goto_3
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    const-wide v12, 0x4056800000000000L

    sub-double v0, v12, v0

    :cond_2
    :goto_4
    double-to-int v11, v0

    goto :goto_0

    :cond_3
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    int-to-double v12, v11

    cmpg-double v11, v4, v12

    if-gtz v11, :cond_4

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v12, v11

    cmpl-double v11, v4, v12

    if-ltz v11, :cond_4

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    goto :goto_1

    :cond_4
    const/4 v11, -0x1

    goto :goto_0

    :cond_5
    iget-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v11, :cond_6

    const/4 v3, 0x0

    :goto_5
    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v11, v11, v3

    iget-object v12, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v12, v12, v3

    mul-float v6, v11, v12

    float-to-double v12, v6

    sub-double v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    double-to-int v2, v12

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v11, v11, v3

    const/high16 v12, 0x3f800000

    iget-object v13, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v13, v13, v3

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-int v7, v11

    if-le v2, v7, :cond_1

    const/4 v11, -0x1

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    :cond_9
    if-eqz v9, :cond_a

    if-nez v10, :cond_a

    const-wide v12, 0x4056800000000000L

    add-double/2addr v0, v12

    goto :goto_4

    :cond_a
    if-nez v9, :cond_b

    if-nez v10, :cond_b

    const-wide v12, 0x4070e00000000000L

    sub-double v0, v12, v0

    goto :goto_4

    :cond_b
    if-nez v9, :cond_2

    if-eqz v10, :cond_2

    const-wide v12, 0x4070e00000000000L

    add-double/2addr v0, v12

    goto :goto_4
.end method

.method private static getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 16
    .param p0    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/16 v5, 0x1f4

    const/high16 v3, 0x3e800000

    const/high16 v12, 0x3f800000

    add-float v11, v12, v3

    int-to-float v13, v5

    mul-float/2addr v13, v11

    float-to-int v10, v13

    int-to-float v13, v5

    mul-float/2addr v13, v3

    int-to-float v14, v10

    div-float v4, v13, v14

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    move/from16 v0, p1

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    const/high16 v13, 0x3f800000

    move/from16 v0, p2

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v9

    const-string/jumbo v13, "value"

    const/4 v14, 0x3

    new-array v14, v14, [Landroid/animation/Keyframe;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    const/4 v15, 0x2

    aput-object v9, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v10

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2
.end method

.method private static getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/16 v1, 0x1f4

    const-string/jumbo v2, "value"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getIsTouchingAmOrPm(FF)I
    .locals 8
    .param p1    # F
    .param p2    # F

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isLayoutRtl()Z

    move-result v2

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    sub-float v6, p2, v6

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    sub-float v7, p2, v7

    mul-float/2addr v6, v7

    float-to-int v3, v6

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    sub-float v6, p1, v6

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    sub-float v7, p1, v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v0, v6

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    if-gt v0, v6, :cond_1

    if-eqz v2, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    sub-float v6, p1, v6

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    sub-float v7, p1, v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v1, v6

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    if-gt v1, v6, :cond_3

    if-eqz v2, :cond_2

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;
    .locals 11
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;
    .param p3    # F
    .param p4    # F

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000

    const v5, 0x3e4ccccd

    const/16 v1, 0x1f4

    const/4 v7, 0x0

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    invoke-static {v5, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    invoke-static {v8, p4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v9

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private static getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;
    .locals 18
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;
    .param p3    # F
    .param p4    # F

    const v10, 0x3e4ccccd

    const/16 v5, 0x1f4

    const/high16 v3, 0x3e800000

    const/high16 v14, 0x3f800000

    add-float v13, v14, v3

    int-to-float v15, v5

    mul-float/2addr v15, v13

    float-to-int v12, v15

    int-to-float v15, v5

    mul-float/2addr v15, v3

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v4, v15, v16

    const/high16 v15, 0x3f800000

    const/high16 v16, 0x3f800000

    sub-float v16, v16, v4

    mul-float v16, v16, v10

    sub-float v10, v15, v16

    const/4 v15, 0x0

    move/from16 v0, p4

    invoke-static {v15, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    move/from16 v0, p4

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    move/from16 v0, p3

    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/high16 v15, 0x3f800000

    const/high16 v16, 0x3f800000

    invoke-static/range {v15 .. v16}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    const/4 v15, 0x4

    new-array v15, v15, [Landroid/animation/Keyframe;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    const/16 v16, 0x2

    aput-object v8, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    int-to-long v0, v12

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2
.end method

.method private initData()V
    .locals 8

    const/16 v2, 0xff

    const/16 v4, 0x3c

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104004c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040051

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040054

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040050

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v7

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040053

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v7

    :goto_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000

    aput v5, v1, v7

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000

    aput v5, v1, v6

    const v1, 0x104004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadiusMultiplier:F

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v1, v6

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v6

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_5
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v7

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_8

    move v1, v4

    :goto_6
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_9

    move v1, v3

    :goto_7
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v7

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v2, :cond_a

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104004b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x104004f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040052

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104004b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x104004f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040052

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto/16 :goto_2

    :cond_5
    move v1, v2

    goto/16 :goto_3

    :cond_6
    move v1, v3

    goto/16 :goto_4

    :cond_7
    move v1, v3

    goto/16 :goto_5

    :cond_8
    move v1, v3

    goto/16 :goto_6

    :cond_9
    move v1, v4

    goto/16 :goto_7

    :cond_a
    move v3, v4

    goto :goto_8
.end method

.method private initHoursAndMinutesText()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v3, v0, v6

    aput-object v3, v2, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v3, v0, v7

    aput-object v3, v2, v7

    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x169

    if-ge v1, v4, :cond_3

    sget-object v4, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    aput v3, v4, v1

    if-ne v0, v2, :cond_2

    add-int/lit8 v3, v3, 0x6

    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    const/4 v2, 0x7

    :goto_1
    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setAnimationRadiusMultiplierHours(F)V
    .locals 2
    .param p1    # F

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method private setAnimationRadiusMultiplierMinutes(F)V
    .locals 2
    .param p1    # F

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0    # I
    .param p1    # I

    const/16 v2, 0x1e

    div-int/lit8 v3, p0, 0x1e

    mul-int/lit8 v1, v3, 0x1e

    add-int/lit8 v0, v1, 0x1e

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move p0, v0

    :goto_0
    return p0

    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    if-ne p0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1e

    :cond_1
    move p0, v1

    goto :goto_0

    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0    # I

    sget-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method private startHoursToMinutesAnimation()V
    .locals 10

    const/4 v9, 0x2

    const/16 v8, 0xff

    const/16 v7, 0x3c

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierHours"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierMinutes"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startMinutesToHoursAnimation()V
    .locals 10

    const/4 v9, 0x2

    const/16 v8, 0xff

    const/16 v7, 0x3c

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierMinutes"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierHours"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateLayoutData()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v3, v1

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    aput v3, v2, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v3, v1

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    aput v3, v2, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v3, v1

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    aput v3, v2, v6

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    :cond_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v4, v4, v7

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    aput v3, v2, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v6

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    aput v3, v2, v6

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesHours()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesMinutes()V

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, v5

    aput v3, v2, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v6

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v6

    iput v6, v1, Landroid/text/format/Time;->hour:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v6

    iput v6, v1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    const/4 v0, 0x1

    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v6, :cond_0

    or-int/lit16 v0, v0, 0x80

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public getAmOrPm()I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    aget v1, v2, v1

    div-int/lit8 v1, v1, 0x1e

    rem-int/lit8 v0, v1, 0xc

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/16 v0, 0xc

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_1
.end method

.method public getCurrentItemShowing()I
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public initialize(IIZ)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    :goto_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesHours()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesMinutes()V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v2, v0, v10

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v5, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v6, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v2, v0, v11

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v5, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v6, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawAmPm(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v5, v6}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v5, :cond_1

    move v3, v6

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v7

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView;->getIsTouchingAmOrPm(FF)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    iget v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-eq v5, v8, :cond_3

    const/4 v3, 0x1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FF)I

    move-result v0

    if-eq v0, v8, :cond_2

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_5

    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v5

    :goto_2
    rem-int/lit16 v4, v5, 0x168

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v9

    :goto_3
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v6

    invoke-interface {v5, v7, v6, v7}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_4
    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v5

    goto :goto_2

    :cond_6
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v6

    goto :goto_3

    :cond_7
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v8

    invoke-interface {v5, v6, v8, v7}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_4

    :pswitch_1
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView;->getIsTouchingAmOrPm(FF)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    iget v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-eq v5, v8, :cond_b

    iget v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-eq v5, v7, :cond_8

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->swapAmPm()V

    :cond_8
    iput v8, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v7, 0x3

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v8

    invoke-interface {v5, v7, v8, v6}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_9
    const/4 v3, 0x1

    :cond_a
    :goto_5
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FF)I

    move-result v0

    if-eq v0, v8, :cond_a

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_d

    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v5

    :goto_6
    rem-int/lit16 v4, v5, 0x168

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v9

    :goto_7
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v8

    invoke-interface {v5, v7, v8, v6}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_c
    :goto_8
    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v5

    goto :goto_6

    :cond_e
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v6

    goto :goto_7

    :cond_f
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v7

    invoke-interface {v5, v6, v7, v6}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1    # I
    .param p2    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v0, 0x0

    const/16 v8, 0x1000

    if-ne p1, v8, :cond_4

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_a

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v8, :cond_5

    const/16 v4, 0x1e

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v8

    rem-int/lit8 v5, v8, 0xc

    :goto_2
    mul-int v1, v5, v4

    invoke-static {v1, v0}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v1

    div-int v5, v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v8, :cond_6

    const/16 v2, 0x17

    :goto_3
    if-le v5, v2, :cond_8

    move v5, v3

    :cond_3
    :goto_4
    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v8, :cond_9

    invoke-virtual {p0, v5}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v8, v7, v5, v7}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_0

    :cond_4
    const/16 v8, 0x2000

    if-ne p1, v8, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x6

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v5

    goto :goto_2

    :cond_6
    const/16 v2, 0xc

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/16 v2, 0x37

    goto :goto_3

    :cond_8
    if-ge v5, v3, :cond_3

    move v5, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v5}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v8, v6, v5, v7}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_0

    :cond_a
    move v6, v7

    goto :goto_0
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1    # I

    rem-int/lit8 v0, p1, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public setCurrentHour(I)V
    .locals 6
    .param p1    # I

    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    rem-int/lit8 v1, p1, 0xc

    mul-int/lit8 v0, v1, 0x1e

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v0, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v4, 0x2

    aput v0, v1, v4

    if-eqz p1, :cond_0

    rem-int/lit8 v1, p1, 0x18

    if-ge v1, v5, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_3

    if-lt p1, v2, :cond_2

    if-gt p1, v5, :cond_2

    :goto_1
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    :goto_2
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    goto :goto_2
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    packed-switch p1, :pswitch_data_0

    const-string v0, "ClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    rem-int/lit8 v2, p1, 0x3c

    mul-int/lit8 v2, v2, 0x6

    aput v2, v0, v1

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startMinutesToHoursAnimation()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startHoursToMinutesAnimation()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method

.method public swapAmPm()V
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
