.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerSpinnerDelegate$Node;,
        Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final ENABLE_PICKER_INDEX:I = 0x3

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field private static final PM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimePickerDelegate"


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeaderView:Landroid/view/View;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourView:Z

.field private mIsEnabled:Z

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSeparatorView:Landroid/widget/TextView;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 20
    .param p1    # Landroid/widget/TimePicker;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/util/AttributeSet;
    .param p4    # I
    .param p5    # I

    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    new-instance v17, Landroid/widget/TimePickerSpinnerDelegate$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v17, Landroid/widget/TimePickerSpinnerDelegate$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$5;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1040679

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mHourPickerDescription:Ljava/lang/String;

    const v17, 0x104067b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mSelectHours:Ljava/lang/String;

    const v17, 0x104067a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mMinutePickerDescription:Ljava/lang/String;

    const v17, 0x104067c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerClockDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    const/16 v17, 0x9

    const v18, 0x10900e2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TimePicker;->addView(Landroid/view/View;)V

    const v17, 0x10203be

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    const v17, 0x10203bf

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mSeparatorView:Landroid/widget/TextView;

    const v17, 0x10203c0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    const v17, 0x10203c1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mSeparatorView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    const/16 v17, 0xb

    const v18, 0x10600ed

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v18

    const v19, 0x10100a1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v18

    const v19, 0x10100a1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    const v17, 0x10203bd

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const v17, 0x10203c3

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadialTimePickerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setupListeners()V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mAllowAutoAdvance:Z

    const v17, 0x1040684

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    const v17, 0x1040682

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mDeletedKeyFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mPlaceholderText:C

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mPmKeyCode:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mAmKeyCode:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->generateLegalTimesTree()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v7

    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v8, v9, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate;->initialize(IIZI)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/TimePickerSpinnerDelegate;IZZ)V
    .locals 0
    .param p0    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0    # Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/RadialTimePickerView;
    .locals 1
    .param p0    # Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TimePickerSpinnerDelegate;I)V
    .locals 0
    .param p0    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/TimePickerSpinnerDelegate;I)Z
    .locals 1
    .param p0    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0    # Landroid/widget/TimePickerSpinnerDelegate;

    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$800(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0    # Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0    # Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->finishKbMode()V

    return-void
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .param p1    # I

    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->deleteLastTypedKey()I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->getValFromKeyCode(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->onValidationChanged(Z)V

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private computeMaxWidthOfNumbers(I)I
    .locals 9
    .param p1    # I

    const/4 v7, -0x2

    const/4 v8, 0x0

    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const v6, 0x103041f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8, v8}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private deleteLastTypedKey()I
    .locals 3

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->onValidationChanged(Z)V

    :cond_0
    return v0
.end method

.method private finishKbMode()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->getEnteredTime([Z)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->updateDisplay(Z)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, v4}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 23

    const/4 v6, 0x7

    const/16 v7, 0x8

    const/16 v8, 0x9

    const/16 v9, 0xa

    const/16 v10, 0xb

    const/16 v11, 0xc

    const/16 v12, 0xd

    const/16 v13, 0xe

    const/16 v14, 0xf

    const/16 v15, 0x10

    new-instance v20, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    new-instance v16, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    new-instance v17, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_5

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x9

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_6

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_7

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x8

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    invoke-virtual {v4, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_9

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_a

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v5, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_b

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    invoke-virtual {v5, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_c

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_d

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_e

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    invoke-virtual {v4, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_10

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_11

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_4
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_5
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_7
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_8
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_9
    .array-data 4
        0x7
        0x8
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_c
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_f
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_10
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_11
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 11
    .param p1    # I

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    iget v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmKeyCode:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmKeyCode:I

    if-ne v6, v5, :cond_1

    :cond_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_4

    new-array v6, v10, [C

    aput-char v0, v6, v8

    aput-char v4, v6, v9

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmKeyCode:I

    aget-object v6, v1, v10

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmKeyCode:I

    :cond_1
    :goto_1
    if-nez p1, :cond_5

    iget v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmKeyCode:I

    :cond_2
    :goto_2
    return v5

    :cond_3
    const-string v6, "TimePickerDelegate"

    const-string v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-ne p1, v9, :cond_2

    iget v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getCurrentItemShowing()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private getEnteredTime([Z)[I
    .locals 11
    .param p1    # [Z

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, -0x1

    const/4 v5, 0x1

    iget-boolean v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v7, :cond_1

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v10}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    :cond_1
    const/4 v4, -0x1

    const/4 v1, -0x1

    move v2, v5

    :goto_1
    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_7

    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/TimePickerSpinnerDelegate;->getValFromKeyCode(I)I

    move-result v6

    if-ne v2, v5, :cond_4

    move v4, v6

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v9}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v5, 0x1

    if-ne v2, v7, :cond_5

    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v4, v7

    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    aput-boolean v9, p1, v9

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v5, 0x2

    if-ne v2, v7, :cond_6

    move v1, v6

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v5, 0x3

    if-ne v2, v7, :cond_2

    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v1, v7

    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    aput-boolean v9, p1, v10

    goto :goto_2

    :cond_7
    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v1, v7, v10

    aput v4, v7, v9

    const/4 v8, 0x2

    aput v0, v7, v8

    return-object v7
.end method

.method private getTypedTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getValFromKeyCode(I)I
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private inKbMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    return v0
.end method

.method private initialize(IIZI)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # I

    iput p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    iput p2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    iput-boolean p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    invoke-direct {p0, p4}, Landroid/widget/TimePickerSpinnerDelegate;->updateUI(I)V

    return-void
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->getEnteredTime([Z)[I

    move-result-object v0

    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->canReach(I)Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # [C

    array-length v3, p1

    if-lez v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-char v4, p1, v2

    if-ne v0, v4, :cond_0

    :goto_2
    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private static modulo12(IZ)I
    .locals 1
    .param p0    # I
    .param p1    # Z

    rem-int/lit8 v0, p0, 0xc

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0xc

    :cond_0
    return v0
.end method

.method private onTimeChanged()V
    .locals 4

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1    # I

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v4, 0x43

    if-ne p1, v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->deleteLastTypedKey()I

    move-result v0

    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_2

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->updateDisplay(Z)V

    :cond_0
    move v2, v3

    :cond_1
    :goto_1
    return v2

    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_3

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    if-eq p1, v4, :cond_5

    const/16 v4, 0x8

    if-eq p1, v4, :cond_5

    const/16 v4, 0x9

    if-eq p1, v4, :cond_5

    const/16 v4, 0xa

    if-eq p1, v4, :cond_5

    const/16 v4, 0xb

    if-eq p1, v4, :cond_5

    const/16 v4, 0xc

    if-eq p1, v4, :cond_5

    const/16 v4, 0xd

    if-eq p1, v4, :cond_5

    const/16 v4, 0xe

    if-eq p1, v4, :cond_5

    const/16 v4, 0xf

    if-eq p1, v4, :cond_5

    const/16 v4, 0x10

    if-eq p1, v4, :cond_5

    iget-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_5

    invoke-direct {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    :cond_5
    iget-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    if-nez v4, :cond_7

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    if-nez v3, :cond_6

    const-string v3, "TimePickerDelegate"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->tryStartingKbMode(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->updateDisplay(Z)V

    goto :goto_1
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 7
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    if-nez p1, :cond_2

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v2, :cond_0

    rem-int/lit8 v0, v0, 0xc

    :cond_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/RadialTimePickerView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    if-nez p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/RadialTimePickerView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private setInKbMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    return-void
.end method

.method private setTypedTimes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    return-void
.end method

.method private setupListeners()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p0}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$1;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$2;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->onValidationChanged(Z)V

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->updateDisplay(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2
    .param p1    # I

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 11
    .param p1    # Z

    if-nez p1, :cond_3

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v4

    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0, v4}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderMinute(I)V

    iget-boolean v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v8, :cond_0

    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    :cond_0
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentItemShowing(IZZ)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/TimePickerSpinnerDelegate;->onValidationChanged(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [Z

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->getEnteredTime([Z)[I

    move-result-object v7

    const/4 v8, 0x0

    aget-boolean v8, v0, v8

    if-eqz v8, :cond_4

    const-string v2, "%02d"

    :goto_2
    const/4 v8, 0x1

    aget-boolean v8, v0, v8

    if-eqz v8, :cond_5

    const-string v5, "%02d"

    :goto_3
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    :goto_4
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    :goto_5
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    iget-boolean v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v8, :cond_1

    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    goto :goto_1

    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    :cond_5
    const-string v5, "%2d"

    goto :goto_3

    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private updateHeaderAmPm()V
    .locals 9

    const v8, 0x10203bf

    const/16 v7, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_0

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v6, "hm"

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    if-ne v5, v3, :cond_1

    if-nez v0, :cond_2

    move v0, v3

    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_3

    invoke-direct {p0, v7}, Landroid/widget/TimePickerSpinnerDelegate;->computeMaxWidthOfNumbers(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_2
    iget v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    if-ge v5, v7, :cond_4

    :goto_3
    invoke-direct {p0, v4}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$3;

    invoke-direct {v4, p0}, Landroid/widget/TimePickerSpinnerDelegate$3;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    const/16 v5, 0x3c

    invoke-direct {p0, v5}, Landroid/widget/TimePickerSpinnerDelegate;->computeMaxWidthOfNumbers(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_3
.end method

.method private updateHeaderHour(IZ)V
    .locals 11
    .param p1    # I
    .param p2    # Z

    iget-object v9, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v8, :cond_4

    const-string v8, "Hm"

    :goto_0
    invoke-static {v9, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x48

    if-eq v1, v8, :cond_0

    const/16 v8, 0x68

    if-eq v1, v8, :cond_0

    const/16 v8, 0x4b

    if-eq v1, v8, :cond_0

    const/16 v8, 0x6b

    if-ne v1, v8, :cond_5

    :cond_0
    move v3, v1

    add-int/lit8 v8, v5, 0x1

    if-ge v8, v6, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v1, v8, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_6

    const-string v2, "%02d"

    :goto_2
    iget-boolean v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v8, :cond_7

    const/16 v8, 0x6b

    if-ne v3, v8, :cond_2

    if-nez p1, :cond_2

    const/16 p1, 0x18

    :cond_2
    :goto_3
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8, v7}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    const-string v8, "hm"

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const-string v2, "%d"

    goto :goto_2

    :cond_7
    const/16 v8, 0x4b

    if-ne v3, v8, :cond_8

    const/4 v8, 0x1

    :goto_4
    invoke-static {p1, v8}, Landroid/widget/TimePickerSpinnerDelegate;->modulo12(IZ)I

    move-result p1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_4
.end method

.method private updateHeaderMinute(I)V
    .locals 6
    .param p1    # I

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 6

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v4, :cond_0

    const-string v4, "Hm"

    :goto_0
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v3, ":"

    :goto_1
    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v4, "hm"

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateRadialPicker(I)V
    .locals 4
    .param p1    # I

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method private updateUI(I)V
    .locals 2
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->updateRadialPicker(I)V

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderAmPm()V

    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderSeparator()V

    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderMinute(I)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateUI(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    const/4 v0, 0x1

    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    or-int/lit16 v0, v0, 0x80

    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1    # Landroid/os/Parcelable;

    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->inKbMode()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setInKbMode(Z)V

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getTypesTimes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setTypedTimes(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerSpinnerDelegate;->initialize(IIZI)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->tryStartingKbMode(I)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 9
    .param p1    # Landroid/os/Parcelable;

    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v4

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->inKbMode()Z

    move-result v5

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getTypedTimes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentItemShowing()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;ILandroid/widget/TimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public onValueSelected(IIZ)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_2

    invoke-direct {p0, p2, v5}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    const-string v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0, v4, v4, v5}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentItemShowing(IZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-direct {p0, p2}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderMinute(I)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    invoke-direct {p0, p2}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->finishKbMode()V

    goto :goto_1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 4
    .param p1    # Ljava/lang/Integer;

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderAmPm()V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1    # Ljava/util/Locale;

    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;

    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderMinute(I)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->generateLegalTimesTree()V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderAmPm()V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->updateRadialPicker(I)V

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->invalidate()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1    # Landroid/widget/TimePicker$OnTimeChangedListener;

    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
