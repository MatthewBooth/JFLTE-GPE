.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$OnDayClickListener;,
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DAY_SEPARATOR_WIDTH:I = 0x1

.field private static final DEFAULT_HEIGHT:I = 0x20

.field private static final DEFAULT_NUM_DAYS:I = 0x7

.field private static final DEFAULT_NUM_ROWS:I = 0x6

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_NUM_ROWS:I = 0x6

.field private static final MIN_HEIGHT:I = 0xa

.field private static final SELECTED_CIRCLE_ALPHA:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "SimpleMonthView"

.field private static mScale:F


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private final mDayLabelCalendar:Ljava/util/Calendar;

.field private mDayNumberDisabledPaint:Landroid/graphics/Paint;

.field private mDayNumberPaint:Landroid/graphics/Paint;

.field private mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field private mDayOfWeekStart:I

.field private mDayOfWeekTypeface:Ljava/lang/String;

.field private final mDaySelectedCircleSize:I

.field private mDisabledTextColor:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private final mFormatter:Ljava/util/Formatter;

.field private mHasToday:Z

.field private mLockAccessibilityDelegate:Z

.field private final mMiniDayNumberTextSize:I

.field private mMonth:I

.field private mMonthDayLabelPaint:Landroid/graphics/Paint;

.field private final mMonthDayLabelTextSize:I

.field private final mMonthHeaderSize:I

.field private final mMonthLabelTextSize:I

.field private mMonthTitlePaint:Landroid/graphics/Paint;

.field private mMonthTitleTypeface:Ljava/lang/String;

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mNumRows:I

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPadding:I

.field private mRowHeight:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mWidth:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/widget/SimpleMonthView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    iput v5, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    const/16 v1, 0x20

    iput v1, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    iput-boolean v5, p0, Landroid/widget/SimpleMonthView;->mHasToday:Z

    iput v6, p0, Landroid/widget/SimpleMonthView;->mSelectedDay:I

    iput v6, p0, Landroid/widget/SimpleMonthView;->mToday:I

    iput v4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    const/4 v1, 0x7

    iput v1, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    iput v1, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    iput v5, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iput v4, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    const/16 v1, 0x1f

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    iput v1, p0, Landroid/widget/SimpleMonthView;->mNumRows:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040687

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    const v1, 0x1040686

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthTitleTypeface:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mFormatter:Ljava/util/Formatter;

    const v1, 0x1050087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    const v1, 0x1050088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mMonthLabelTextSize:I

    const v1, 0x1050089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelTextSize:I

    const v1, 0x105008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    const v1, 0x105008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectedCircleSize:I

    const v1, 0x105008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    new-instance v1, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v1, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v1}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v4}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    iput-boolean v4, p0, Landroid/widget/SimpleMonthView;->mLockAccessibilityDelegate:Z

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->initView()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/SimpleMonthView;FF)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;
    .param p1    # F
    .param p2    # F

    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mSelectedDay:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SimpleMonthView;I)V
    .locals 0
    .param p0    # Landroid/widget/SimpleMonthView;
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClick(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0    # Landroid/widget/SimpleMonthView;

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method private calculateNumRows()I
    .locals 5

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    iget v3, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    div-int v0, v3, v4

    iget v3, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    rem-int v2, v3, v4

    if-lez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v0

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;

    iget v6, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    add-int v5, v6, v7

    iget v6, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    mul-int/lit8 v7, v7, 0x2

    div-int v1, v6, v7

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v2

    const/4 v0, 0x1

    :goto_0
    iget v6, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    if-gt v0, v6, :cond_5

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v1

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    add-int v4, v6, v7

    iget v6, p0, Landroid/widget/SimpleMonthView;->mSelectedDay:I

    if-ne v6, v0, :cond_0

    int-to-float v6, v4

    iget v7, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    div-int/lit8 v7, v7, 0x3

    sub-int v7, v5, v7

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/SimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v6, p0, Landroid/widget/SimpleMonthView;->mHasToday:Z

    if-eqz v6, :cond_3

    iget v6, p0, Landroid/widget/SimpleMonthView;->mToday:I

    if-ne v6, v0, :cond_3

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v7, p0, Landroid/widget/SimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v6, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt v0, v6, :cond_1

    iget v6, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-le v0, v6, :cond_4

    :cond_1
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    :goto_2
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    iget v6, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    if-ne v2, v6, :cond_2

    const/4 v2, 0x0

    iget v6, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    add-int/2addr v5, v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v7, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_5
    return-void
.end method

.method private drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;

    const/high16 v4, 0x40000000

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v2, v4

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelTextSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v1, v2, v4

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawWeekDayLabels(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;

    iget v6, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelTextSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    iget v6, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    mul-int/lit8 v7, v7, 0x2

    div-int v2, v6, v7

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    if-ge v3, v6, :cond_0

    iget v6, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v6, v3

    iget v7, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    rem-int v0, v6, v7

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Landroid/widget/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    add-int v4, v6, v7

    int-to-float v6, v4

    int-to-float v7, v5

    iget-object v8, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    goto :goto_0
.end method

.method private getDayFromLocation(FF)I
    .locals 8
    .param p1    # F
    .param p2    # F

    const/4 v4, -0x1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    int-to-float v5, v2

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    iget v5, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget v6, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    :cond_0
    move v1, v4

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    float-to-int v5, v5

    iget v6, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    div-int v3, v5, v6

    int-to-float v5, v2

    sub-float v5, p1, v5

    iget v6, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    sub-int/2addr v6, v2

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v0, v5

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v5

    sub-int v5, v0, v5

    add-int/lit8 v1, v5, 0x1

    iget v5, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    mul-int/2addr v5, v3

    add-int/2addr v1, v5

    const/4 v5, 0x1

    if-lt v1, v5, :cond_3

    iget v5, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    if-le v1, v5, :cond_1

    :cond_3
    move v1, v4

    goto :goto_0
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0    # I
    .param p1    # I

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1f

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 8

    const/16 v6, 0x34

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mFormatter:Ljava/util/Formatter;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthLabelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthTitleTypeface:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDisabledTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2
    .param p0    # I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 1
    .param p0    # I

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDayClick(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private sameDay(ILandroid/text/format/Time;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/text/format/Time;

    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method getAccessibilityFocus()Ljava/util/Calendar;
    .locals 4

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v1

    const/4 v0, 0x0

    if-ltz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar;->set(III)V

    :cond_0
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonthTitle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawWeekDayLabels(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mNumRows:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iput p1, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/SimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->onDayClick(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method restoreAccessibilityFocus(Ljava/util/Calendar;)Z
    .locals 4
    .param p1    # Ljava/util/Calendar;

    const/4 v3, 0x5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->setFocusedVirtualView(I)V

    goto :goto_0
.end method

.method public reuse()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/SimpleMonthView;->mNumRows:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1
    .param p1    # Landroid/view/View$AccessibilityDelegate;

    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 8
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const/16 v7, 0x20

    const/16 v4, 0xa

    const/4 v6, 0x1

    iget v3, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    if-ge v3, v4, :cond_0

    iput v4, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    :cond_0
    iput p1, p0, Landroid/widget/SimpleMonthView;->mSelectedDay:I

    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    :cond_1
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/SimpleMonthView;->mHasToday:Z

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    :goto_0
    if-lez p5, :cond_2

    if-ge p6, v7, :cond_2

    iput p5, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    :cond_2
    if-lez p6, :cond_3

    if-ge p6, v7, :cond_3

    if-lt p6, p5, :cond_3

    iput p6, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    :cond_3
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v3, v4}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    if-ge v1, v3, :cond_6

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Landroid/widget/SimpleMonthView;->mHasToday:Z

    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->calculateNumRows()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mNumRows:I

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const v2, 0x106009a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/widget/SimpleMonthView;->EMPTY_STATE_SET:[I

    const v2, 0x106009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDisabledTextColor:I

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDisabledTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_SELECTED_STATE_SET:[I

    const v2, 0x1060012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mSelectedDayColor:I

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/SimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
