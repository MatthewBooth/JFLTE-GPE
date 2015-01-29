.class Landroid/widget/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YearPickerView$YearAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/YearPickerView$YearAdapter;

.field private mChildSize:I

.field private mController:Landroid/widget/DatePickerController;

.field private mSelectedPosition:I

.field private mViewSize:I

.field private mYearSelectedCircleColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # I

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v5, p0, Landroid/widget/YearPickerView;->mSelectedPosition:I

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroid/widget/YearPickerView;->mViewSize:I

    const v3, 0x105008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroid/widget/YearPickerView;->mChildSize:I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/YearPickerView;->setVerticalFadingEdgeEnabled(Z)V

    iget v3, p0, Landroid/widget/YearPickerView;->mChildSize:I

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Landroid/widget/YearPickerView;->setFadingEdgeLength(I)V

    const v3, 0x105008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v4, v1, v4, v4}, Landroid/widget/YearPickerView;->setPadding(IIII)V

    invoke-virtual {p0, p0}, Landroid/widget/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/YearPickerView;->setDividerHeight(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/YearPickerView;)Landroid/widget/DatePickerController;
    .locals 1
    .param p0    # Landroid/widget/YearPickerView;

    iget-object v0, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/YearPickerView;)I
    .locals 1
    .param p0    # Landroid/widget/YearPickerView;

    iget v0, p0, Landroid/widget/YearPickerView;->mYearSelectedCircleColor:I

    return v0
.end method

.method private updateAdapterData()V
    .locals 4

    iget-object v2, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v2}, Landroid/widget/YearPickerView$YearAdapter;->clear()V

    iget-object v2, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v2}, Landroid/widget/DatePickerController;->getMaxYear()I

    move-result v0

    iget-object v2, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v2}, Landroid/widget/DatePickerController;->getMinYear()I

    move-result v1

    :goto_0
    if-gt v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/YearPickerView$YearAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public getYearSelectedCircleColor()I
    .locals 1

    iget v0, p0, Landroid/widget/YearPickerView;->mYearSelectedCircleColor:I

    return v0
.end method

.method public init(Landroid/widget/DatePickerController;)V
    .locals 3
    .param p1    # Landroid/widget/DatePickerController;

    iput-object p1, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    iget-object v0, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v0, p0}, Landroid/widget/DatePickerController;->registerOnDateChangedListener(Landroid/widget/OnDateChangedListener;)V

    new-instance v0, Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0}, Landroid/widget/YearPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10900f1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/YearPickerView$YearAdapter;-><init>(Landroid/widget/YearPickerView;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-direct {p0}, Landroid/widget/YearPickerView;->updateAdapterData()V

    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/widget/YearPickerView;->onDateChanged()V

    return-void
.end method

.method public onDateChanged()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/YearPickerView;->updateAdapterData()V

    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v0}, Landroid/widget/DatePickerController;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v1}, Landroid/widget/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/YearPickerView;->postSetSelectionCentered(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    invoke-interface {v0}, Landroid/widget/DatePickerController;->tryVibrate()V

    iget v0, p0, Landroid/widget/YearPickerView;->mSelectedPosition:I

    if-eq p3, v0, :cond_0

    iput p3, p0, Landroid/widget/YearPickerView;->mSelectedPosition:I

    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Landroid/widget/YearPickerView;->mController:Landroid/widget/DatePickerController;

    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/widget/DatePickerController;->onYearSelected(I)V

    return-void
.end method

.method public postSetSelectionCentered(I)V
    .locals 2
    .param p1    # I

    iget v0, p0, Landroid/widget/YearPickerView;->mViewSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/YearPickerView;->mChildSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/YearPickerView;->postSetSelectionFromTop(II)V

    return-void
.end method

.method public postSetSelectionFromTop(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    new-instance v0, Landroid/widget/YearPickerView$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/YearPickerView$1;-><init>(Landroid/widget/YearPickerView;II)V

    invoke-virtual {p0, v0}, Landroid/widget/YearPickerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setItemTextAppearance(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView$YearAdapter;->setItemTextAppearance(I)V

    return-void
.end method

.method public setYearSelectedCircleColor(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Landroid/widget/YearPickerView;->mYearSelectedCircleColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/YearPickerView;->mYearSelectedCircleColor:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/YearPickerView;->requestLayout()V

    return-void
.end method
