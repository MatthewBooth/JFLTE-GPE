.class final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryTouchListener"
.end annotation


# instance fields
.field private final mAlternateIcon:Landroid/widget/ImageView;

.field private final mEntry:Landroid/view/View;

.field private mSlop:I

.field private final mThirdIcon:Landroid/widget/ImageView;

.field private mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/widget/ImageView;
    .param p3    # Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    return-void
.end method

.method private hitAlternateIcon(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private hitThirdIcon(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p2, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_1
    invoke-virtual {v4, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->hitThirdIcon(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    const/4 v2, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->hitAlternateIcon(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    const/4 v2, 0x0

    goto :goto_2

    :pswitch_1
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    if-eq v7, v8, :cond_4

    move v2, v5

    :goto_3
    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    neg-int v5, v5

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    neg-int v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_3

    :pswitch_2
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    if-eq v7, v8, :cond_5

    move v2, v5

    :goto_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_4

    :cond_6
    iget v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    mul-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    mul-int/lit8 v6, v6, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p2, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
