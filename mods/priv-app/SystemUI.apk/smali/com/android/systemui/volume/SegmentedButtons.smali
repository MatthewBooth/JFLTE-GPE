.class public Lcom/android/systemui/volume/SegmentedButtons;
.super Landroid/widget/LinearLayout;
.source "SegmentedButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SegmentedButtons$Callback;
    }
.end annotation


# static fields
.field private static final BOLD:Landroid/graphics/Typeface;

.field private static final MEDIUM:Landroid/graphics/Typeface;


# instance fields
.field private mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mClick:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mSelectedValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->BOLD:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/volume/SegmentedButtons$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SegmentedButtons$2;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SegmentedButtons;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/SegmentedButtons;)V
    .locals 0
    .param p0    # Lcom/android/systemui/volume/SegmentedButtons;

    invoke-direct {p0}, Lcom/android/systemui/volume/SegmentedButtons;->fireInteraction()V

    return-void
.end method

.method private fireInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/SegmentedButtons$Callback;->onInteraction()V

    :cond_0
    return-void
.end method

.method private fireOnSelected()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons$Callback;->onSelected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addButton(ILjava/lang/Object;)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040040

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0e013d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SegmentedButtons;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/systemui/volume/SegmentedButtons$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SegmentedButtons$1;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    invoke-static {v0, v2}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    return-void
.end method

.method public getSelectedValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V
    .locals 0
    .param p1    # Lcom/android/systemui/volume/SegmentedButtons$Callback;

    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    return-void
.end method

.method public setSelectedValue(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz v2, :cond_1

    sget-object v4, Lcom/android/systemui/volume/SegmentedButtons;->BOLD:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SegmentedButtons;->fireOnSelected()V

    goto :goto_0
.end method

.method public updateLocale()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f0e013d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
