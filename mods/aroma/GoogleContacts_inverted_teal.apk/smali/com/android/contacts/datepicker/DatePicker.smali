.class public Lcom/android/contacts/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePicker$SavedState;,
        Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field public static NO_YEAR:I


# instance fields
.field private mDay:I

.field private final mDayPicker:Landroid/widget/NumberPicker;

.field private mHasYear:Z

.field private mMonth:I

.field private final mMonthPicker:Landroid/widget/NumberPicker;

.field private mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

.field private final mPickerContainer:Landroid/widget/LinearLayout;

.field private mYear:I

.field private mYearOptional:Z

.field private final mYearPicker:Landroid/widget/NumberPicker;

.field private final mYearToggle:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const-wide/16 v10, 0x64

    const/16 v7, 0xc

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f040024

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v5, 0x7f0e0064

    invoke-virtual {p0, v5}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0e0066

    invoke-virtual {p0, v5}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v10, v11}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v6, Lcom/android/contacts/datepicker/DatePicker$1;

    invoke-direct {v6, p0}, Lcom/android/contacts/datepicker/DatePicker$1;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const v5, 0x7f0e0065

    invoke-virtual {p0, v5}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v9

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :goto_1
    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v6, Lcom/android/contacts/datepicker/DatePicker$2;

    invoke-direct {v6, p0}, Lcom/android/contacts/datepicker/DatePicker$2;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const v5, 0x7f0e0067

    invoke-virtual {p0, v5}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v10, v11}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v6, Lcom/android/contacts/datepicker/DatePicker$3;

    invoke-direct {v6, p0}, Lcom/android/contacts/datepicker/DatePicker$3;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/16 v6, 0x76c

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/16 v6, 0x834

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const v5, 0x7f0e0063

    invoke-virtual {p0, v5}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/contacts/datepicker/DatePicker$4;

    invoke-direct {v6, p0}, Lcom/android/contacts/datepicker/DatePicker$4;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers()V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/contacts/datepicker/DatePicker;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic access$002(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/datepicker/DatePicker;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .param p0    # Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/datepicker/DatePicker;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .param p0    # Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .param p0    # Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/datepicker/DatePicker;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/contacts/datepicker/DatePicker;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/datepicker/DatePicker;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .param p0    # Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method private adjustMaxDay()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-le v2, v1, :cond_0

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x7d0

    goto :goto_0
.end method

.method private getCurrentYear()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private notifyDateChanged()V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v1, :cond_1

    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method private reorderPickers()V
    .locals 9

    iget-boolean v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v7, :cond_0

    const-string v6, "yyyyMMMdd"

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v4

    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-char v1, v0, v2

    const/16 v7, 0x64

    if-ne v1, v7, :cond_1

    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v6, "MMMdd"

    goto :goto_0

    :cond_1
    const/16 v7, 0x4d

    if-ne v1, v7, :cond_2

    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updateDaySpinner()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void

    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-boolean v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method public init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz p4, :cond_2

    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iput-object p5, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isYearOptional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->hasYear()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->isYearOptional()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-boolean v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iget-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    return-void
.end method
