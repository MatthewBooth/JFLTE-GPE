.class public Lcom/android/contacts/common/list/ViewPagerTabs;
.super Landroid/widget/HorizontalScrollView;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevSelected:I

.field mSidePadding:I

.field private mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

.field final mTextAllCaps:Z

.field final mTextColor:Landroid/content/res/ColorStateList;

.field final mTextSize:I

.field final mTextStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ViewPagerTabs$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ViewPagerTabs$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->ATTRS:[I

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x101038c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/ViewPagerTabs;->setFillViewport(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mSidePadding:I

    sget-object v1, Lcom/android/contacts/common/list/ViewPagerTabs;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextSize:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextAllCaps:Z

    new-instance v1, Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-direct {v1, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/android/contacts/common/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ViewPagerTabs;I)I
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/ViewPagerTabs;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result v0

    return v0
.end method

.method private addTab(Ljava/lang/CharSequence;I)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    const/4 v6, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Lcom/android/contacts/common/list/ViewPagerTabs$2;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/list/ViewPagerTabs$2;-><init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;-><init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mSidePadding:I

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mSidePadding:I

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_3

    iput v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method private addTabs(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3
    .param p1    # Landroid/support/v4/view/PagerAdapter;

    iget-object v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->removeAllViews()V

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->addTab(Ljava/lang/CharSequence;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getRtlPosition(I)I
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    return p1
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1    # I
    .param p2    # F
    .param p3    # I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    iget v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v2, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    invoke-virtual {p0, v0, v5}, Lcom/android/contacts/common/list/ViewPagerTabs;->smoothScrollTo(II)V

    iput p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1    # Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;->addTabs(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method
