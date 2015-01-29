.class Landroid/widget/DayPickerView;
.super Landroid/widget/ListView;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final GOTO_SCROLL_DURATION:I = 0xfa

.field private static LIST_TOP_OFFSET:I = 0x0

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final TAG:Ljava/lang/String; = "DayPickerView"


# instance fields
.field private mAdapter:Landroid/widget/SimpleMonthAdapter;

.field private mController:Landroid/widget/DatePickerController;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mFriction:F

.field private mPerformingScroll:Z

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/DayPickerView$ScrollStateRunnable;

.field private mSelectedDay:Ljava/util/Calendar;

.field private mTempDay:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/widget/DayPickerView;->LIST_TOP_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/DatePickerController;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/DatePickerController;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    const/high16 v0, 0x3f800000

    iput v0, p0, Landroid/widget/DayPickerView;->mFriction:F

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    iput v3, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    iput v3, p0, Landroid/widget/DayPickerView;->mCurrentScrollState:I

    new-instance v0, Landroid/widget/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0, p0}, Landroid/widget/DayPickerView$ScrollStateRunnable;-><init>(Landroid/widget/DayPickerView;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mScrollStateChangedRunnable:Landroid/widget/DayPickerView$ScrollStateRunnable;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->init()V

    invoke-virtual {p0, p2}, Landroid/widget/DayPickerView;->setController(Landroid/widget/DatePickerController;)V

    return-void
.end method

.method static synthetic access$002(Landroid/widget/DayPickerView;I)I
    .locals 0
    .param p0    # Landroid/widget/DayPickerView;
    .param p1    # I

    iput p1, p0, Landroid/widget/DayPickerView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/DayPickerView;)I
    .locals 1
    .param p0    # Landroid/widget/DayPickerView;

    iget v0, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/DayPickerView;I)I
    .locals 0
    .param p0    # Landroid/widget/DayPickerView;
    .param p1    # I

    iput p1, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Landroid/widget/DayPickerView;->LIST_TOP_OFFSET:I

    return v0
.end method

.method private findAccessibilityFocus()Ljava/util/Calendar;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/SimpleMonthView;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/widget/SimpleMonthView;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getAccessibilityFocus()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 5
    .param p1    # Ljava/util/Calendar;
    .param p2    # Ljava/util/Calendar;

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v2, v3

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0xc

    add-int v0, v2, v3

    return v0
.end method

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/util/Calendar;

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v2, v2, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPositionFromDay(Ljava/util/Calendar;)I
    .locals 4
    .param p1    # Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v2}, Landroid/widget/DatePickerController;->getMinDate()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v3}, Landroid/widget/DatePickerController;->getMaxDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v2}, Landroid/widget/DatePickerController;->getMinDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private restoreAccessibilityFocus(Ljava/util/Calendar;)Z
    .locals 5
    .param p1    # Ljava/util/Calendar;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/SimpleMonthView;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/widget/SimpleMonthView;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView;->restoreAccessibilityFocus(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMostVisiblePosition()I
    .locals 11

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    add-int v8, v3, v7

    return v8

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v2, v8, v9

    if-le v2, v6, :cond_2

    move v7, v5

    move v6, v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public goTo(Ljava/util/Calendar;ZZZ)Z
    .locals 10
    .param p1    # Ljava/util/Calendar;
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z

    if-eqz p3, :cond_0

    iget-object v6, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    iget-object v6, p0, Landroid/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0, p1}, Landroid/widget/DayPickerView;->getPositionFromDay(Ljava/util/Calendar;)I

    move-result v3

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    :goto_1
    if-eqz p3, :cond_2

    iget-object v6, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    iget-object v7, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Landroid/widget/SimpleMonthAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    :cond_2
    if-ne v3, v4, :cond_3

    if-eqz p4, :cond_8

    :cond_3
    iget-object v6, p0, Landroid/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Landroid/widget/DayPickerView;->setMonthDisplayed(Ljava/util/Calendar;)V

    const/4 v6, 0x2

    iput v6, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    if-eqz p2, :cond_6

    sget v6, Landroid/widget/DayPickerView;->LIST_TOP_OFFSET:I

    const/16 v7, 0xfa

    invoke-virtual {p0, v3, v6, v7}, Landroid/widget/DayPickerView;->smoothScrollToPositionFromTop(III)V

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-gez v5, :cond_1

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3}, Landroid/widget/DayPickerView;->postSetSelection(I)V

    :cond_7
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_7

    iget-object v6, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Landroid/widget/DayPickerView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_3
.end method

.method public init()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setDrawSelectorOnTop(Z)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->setUpListView()V

    return-void
.end method

.method protected layoutChildren()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/DayPickerView;->findAccessibilityFocus()Ljava/util/Calendar;

    move-result-object v0

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-boolean v1, p0, Landroid/widget/DayPickerView;->mPerformingScroll:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/DayPickerView;->mPerformingScroll:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->restoreAccessibilityFocus(Ljava/util/Calendar;)Z

    goto :goto_0
.end method

.method public onChange()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->setUpAdapter()V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public onDateChanged()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v0}, Landroid/widget/DatePickerController;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/widget/DayPickerView;->goTo(Ljava/util/Calendar;ZZZ)Z

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleMonthView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/widget/DayPickerView;->mCurrentScrollState:I

    iput v1, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    iget-object v0, p0, Landroid/widget/DayPickerView;->mScrollStateChangedRunnable:Landroid/widget/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 12
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/16 v11, 0x1000

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v5, 0x1

    if-eq p1, v11, :cond_0

    const/16 v6, 0x2000

    if-eq p1, v6, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getFirstVisiblePosition()I

    move-result v1

    rem-int/lit8 v3, v1, 0xc

    div-int/lit8 v6, v1, 0xc

    iget-object v7, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v7}, Landroid/widget/DatePickerController;->getMinYear()I

    move-result v7

    add-int v4, v6, v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v5}, Ljava/util/Calendar;->set(III)V

    if-ne p1, v11, :cond_2

    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    invoke-virtual {v0, v8, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5, v5}, Ljava/util/Calendar;->add(II)V

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/DayPickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v5, v10, v5}, Landroid/widget/DayPickerView;->goTo(Ljava/util/Calendar;ZZZ)Z

    iput-boolean v5, p0, Landroid/widget/DayPickerView;->mPerformingScroll:Z

    goto :goto_0

    :cond_2
    const/16 v6, 0x2000

    if-ne p1, v6, :cond_1

    invoke-virtual {p0, v10}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v6, v9, :cond_1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v9, :cond_1

    const/16 v6, 0xb

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_1
.end method

.method public postSetSelection(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->clearFocus()V

    new-instance v0, Landroid/widget/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Landroid/widget/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthAdapter;->setCalendarTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setController(Landroid/widget/DatePickerController;)V
    .locals 1
    .param p1    # Landroid/widget/DatePickerController;

    iget-object v0, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v0, p0}, Landroid/widget/DatePickerController;->unregisterOnDateChangedListener(Landroid/widget/OnDateChangedListener;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    iget-object v0, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v0, p0}, Landroid/widget/DatePickerController;->registerOnDateChangedListener(Landroid/widget/OnDateChangedListener;)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->setUpAdapter()V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onDateChanged()V

    return-void
.end method

.method protected setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 3
    .param p1    # Ljava/util/Calendar;

    const/4 v2, 0x2

    iget v0, p0, Landroid/widget/DayPickerView;->mCurrentMonthDisplayed:I

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/DayPickerView;->mCurrentMonthDisplayed:I

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method protected setUpAdapter()V
    .locals 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DayPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-direct {v0, v1, v2}, Landroid/widget/SimpleMonthAdapter;-><init>(Landroid/content/Context;Landroid/widget/DatePickerController;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    :goto_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleMonthAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected setUpListView()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->setCacheColorHint(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setItemsCanFocus(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->setFastScrollEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p0}, Landroid/widget/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->setFadingEdgeLength(I)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Landroid/widget/DayPickerView;->mFriction:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setFriction(F)V

    return-void
.end method
