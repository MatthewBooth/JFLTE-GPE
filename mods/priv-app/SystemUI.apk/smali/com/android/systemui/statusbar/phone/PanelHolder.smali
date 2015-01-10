.class public Lcom/android/systemui/statusbar/phone/PanelHolder;
.super Landroid/widget/FrameLayout;
.source "PanelHolder.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mSelectedPanelIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1    # I
    .param p2    # I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getPanelIndex(Lcom/android/systemui/statusbar/phone/PanelView;)I
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    if-ne p1, v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v5, :cond_0

    const v0, 0x8cc8

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    return v4
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/phone/PanelBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setSelectedPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getPanelIndex(Lcom/android/systemui/statusbar/phone/PanelView;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    return-void
.end method
