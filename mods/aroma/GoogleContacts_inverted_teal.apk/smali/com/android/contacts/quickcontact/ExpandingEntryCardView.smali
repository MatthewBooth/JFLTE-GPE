.class public Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.super Landroid/support/v7/widget/CardView;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;
    }
.end annotation


# instance fields
.field private mAllEntriesInflated:Z

.field private mAnimationViewGroup:Landroid/view/ViewGroup;

.field private mBadgeContainer:Landroid/widget/LinearLayout;

.field private final mBadgeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapseButtonText:Ljava/lang/CharSequence;

.field private mCollapsedEntriesCount:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEntriesViewGroup:Landroid/widget/LinearLayout;

.field private mEntryViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExpandButtonText:Ljava/lang/CharSequence;

.field private final mExpandCollapseArrow:Landroid/widget/ImageView;

.field private mExpandCollapseButton:Landroid/view/View;

.field private final mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

.field private mExpandCollapseTextView:Landroid/widget/TextView;

.field private mIsAlwaysExpanded:Z

.field private mIsExpanded:Z

.field private mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

.field private mNumEntries:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mSeparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeColor:I

.field private mThemeColorFilter:Landroid/graphics/ColorFilter;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    iput v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    new-instance v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e0098

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f0e0096

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f040067

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const v3, 0x7f0e003d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const v3, 0x7f0e00ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const v3, 0x7f0e00cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeContainer:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadges:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeIds:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->collapse()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->expand()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addEntry(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private collapse()V
    .locals 8

    const-wide/16 v6, 0x12c

    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getExpandButtonText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v6, v7}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    new-instance v1, Landroid/transition/ChangeScroll;

    invoke-direct {v1}, Landroid/transition/ChangeScroll;-><init>()V

    invoke-virtual {v1, v6, v7}, Landroid/transition/ChangeScroll;->setDuration(J)Landroid/transition/Transition;

    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const v5, 0x7f0e003d

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/transition/TransitionSet;->excludeTarget(IZ)Landroid/transition/Transition;

    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    move-object v4, p0

    :goto_0
    new-instance v5, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;

    invoke-direct {v5, p0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;I)V

    invoke-virtual {v0, v5}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-static {v4, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;
    .locals 15
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;
    .param p3    # I

    const v11, 0x7f04003a

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setContextMenuInfo(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getPrimaryContentDescription()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getPrimaryContentDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const v11, 0x7f0e0025

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v11, 0x7f0e0090

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getHeader()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v11, 0x7f0e0092

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeader()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v11, 0x7f0e0093

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const v11, 0x7f0e003d

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v11, 0x7f0e0094

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getTextIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getTextIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-result-object v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_4

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_4

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080095

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08009b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v11, v12

    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/4 v11, 0x4

    move/from16 v0, p3

    if-ne v0, v11, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeader()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    :cond_5
    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingStart()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08009c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingEnd()I

    move-result v13

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setPaddingRelative(IIII)V

    :cond_6
    :goto_5
    const v11, 0x7f0e0091

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v11, 0x7f0e0095

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateContentDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdContentDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    new-instance v11, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;

    invoke-direct {v11, v10, v1, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v11, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v10, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-object v10

    :cond_9
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_b
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_d
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_e
    const/4 v11, 0x4

    move/from16 v0, p3

    if-ne v0, v11, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeader()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingStart()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingEnd()I

    move-result v13

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setPaddingRelative(IIII)V

    goto/16 :goto_5
.end method

.method private expand()V
    .locals 10

    const-wide/16 v8, 0x12c

    const/4 v6, 0x1

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v8, v9}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1, v6}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/transition/Fade;->setStartDelay(J)Landroid/transition/Transition;

    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const v4, 0x7f0e003d

    invoke-virtual {v2, v4, v6}, Landroid/transition/TransitionSet;->excludeTarget(IZ)Landroid/transition/Transition;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    move-object v3, p0

    :goto_0
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    invoke-virtual {v2, v4}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getCollapseButtonText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4, v8, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private generateSeparator(Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/View;

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07003f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const v7, 0x7f080089

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v6, 0x7f08008a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v6, 0x7f0e0025

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x7f0800a0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f08008e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v1, v6, v7

    add-int/2addr v3, v1

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v5
.end method

.method private getCollapseButtonText()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapseButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapseButtonText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getExpandButtonText()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandButtonText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private inflateAllEntries(Landroid/view/LayoutInflater;)V
    .locals 7
    .param p1    # Landroid/view/LayoutInflater;

    iget-boolean v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    const/16 v3, 0x8

    :goto_3
    invoke-direct {p0, p1, v0, v3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v3, 0x4

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    goto :goto_0
.end method

.method private inflateInitialEntries(Landroid/view/LayoutInflater;)V
    .locals 9
    .param p1    # Landroid/view/LayoutInflater;

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    if-ne v6, v7, :cond_1

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int v2, v6, v7

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-direct {p0, p1, v6, v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v5, v6, :cond_2

    if-lez v2, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    const/4 v7, 0x4

    invoke-direct {p0, p1, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private insertEntriesIntoViewGroup()V
    .locals 12

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-boolean v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v9, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-lez v2, :cond_0

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    if-gt v9, v10, :cond_1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->generateSeparator(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->addEntry(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget-object v10, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v1, v9, v10

    const/4 v2, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v5, v9, :cond_7

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-lez v2, :cond_4

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    if-gt v9, v10, :cond_5

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->generateSeparator(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->addEntry(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v5, v9, :cond_6

    if-lez v1, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->addEntry(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->removeView(Landroid/view/View;)V

    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget v10, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    if-ge v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_8

    iget-boolean v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsAlwaysExpanded:Z

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_8
    return-void
.end method

.method private updateBadges()V
    .locals 11

    const/4 v10, 0x0

    iget-boolean v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    iget v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    :goto_0
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-virtual {v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-virtual {v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIconResourceId()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeIds:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_2

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08009f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080098

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadges:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeIds:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private updateExpandCollapseButton(Ljava/lang/CharSequence;J)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # J

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    const-string v2, "rotation"

    new-array v3, v3, [F

    const/high16 v4, 0x43340000

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateBadges()V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    const-string v2, "rotation"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public applyColor()V
    .locals 9

    iget v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->shouldApplyColor()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    return-void
.end method

.method public initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V
    .locals 8
    .param p2    # I
    .param p3    # Z
    .param p4    # Z
    .param p5    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;
    .param p6    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;>;IZZ",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-boolean p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    iput-boolean p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsAlwaysExpanded:Z

    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    iget-boolean v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsAlwaysExpanded:Z

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    iput v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    :cond_1
    iput-object p5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    iput-object p6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getCollapseButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    invoke-direct {p0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->applyColor()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getExpandButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    invoke-direct {p0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateInitialEntries(Landroid/view/LayoutInflater;)V

    goto :goto_1
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    return v0
.end method

.method public setColorAndFilter(ILandroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/graphics/ColorFilter;

    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->applyColor()V

    return-void
.end method

.method public setEntryHeaderColor(I)V
    .locals 6
    .param p1    # I

    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v5, 0x7f0e0090

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setExpandButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnCreateContextMenuListener;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const v5, 0x7f08008c

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v1, "ExpandingEntryCardView"

    const-string v4, "mTitleTextView is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0e0097

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

.method public shouldShow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
