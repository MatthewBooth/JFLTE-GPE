.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;,
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:I

.field private mLandscapeTabs:Landroid/view/View;

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private mMaxPortraitTabHeight:I

.field private mMaxToolbarContentInsetStart:I

.field private mPortraitTabs:Landroid/view/View;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mQueryString:Ljava/lang/String;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/EditText;

.field private mShowHomeIcon:Z

.field private final mToolbar:Landroid/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Landroid/view/View;Landroid/view/View;Landroid/widget/Toolbar;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .param p3    # Landroid/app/ActionBar;
    .param p4    # Landroid/view/View;
    .param p5    # Landroid/view/View;
    .param p6    # Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPortraitTabs:Landroid/view/View;

    iput-object p5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mLandscapeTabs:Landroid/view/View;

    iput-object p6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mMaxToolbarContentInsetStart:I

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupSearchView()V

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setupTabs(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ActionBarAdapter;I)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setPortraitTabHeight(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ActionBarAdapter;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/activities/ActionBarAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptionsInner()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ActionBarAdapter;Z)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->addLandscapeViewPagerTabs()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/widget/Toolbar;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method private addLandscapeViewPagerTabs()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mLandscapeTabs:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mLandscapeTabs:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mLandscapeTabs:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private addSearchContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    return-void
.end method

.method private animateTabHeightChange(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPortraitTabs:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/ActionBarAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ActionBarAdapter$4;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private loadLastTabPreference()I
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "actionBarAdapter.lastTab"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private saveLastTabPreference(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actionBarAdapter.lastTab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setPortraitTabHeight(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPortraitTabs:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPortraitTabs:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPortraitTabs:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setupSearchView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04006d

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f0e0062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0107

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f0e00e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ActionBarAdapter$1;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f0e00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ActionBarAdapter$2;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupTabs(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10102eb

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mMaxPortraitTabHeight:I

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setPortraitTabHeight(I)V

    return-void
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 7
    .param p1    # Z

    const/4 v2, 0x1

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-ne v1, v4, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mLandscapeTabs:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->addSearchContainer()V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mMaxPortraitTabHeight:I

    invoke-direct {p0, v1, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->animateTabHeightChange(II)V

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions(Z)V

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mMaxPortraitTabHeight:I

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->animateTabHeightChange(II)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter$3;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mLandscapeTabs:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setPortraitTabHeight(I)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->addSearchContainer()V

    :cond_4
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions(Z)V

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mMaxPortraitTabHeight:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setPortraitTabHeight(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->addLandscapeViewPagerTabs()V

    goto :goto_3
.end method

.method private updateDisplayOptions(Z)V
    .locals 3
    .param p1    # Z

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptionsInner()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto :goto_0
.end method

.method private updateDisplayOptionsInner()V
    .locals 6

    const/16 v0, 0x1e

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1e

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v3, :cond_0

    or-int/lit8 v2, v2, 0x2

    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v5}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    :goto_0
    if-eq v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_1
    return-void

    :cond_2
    or-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    iget v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mMaxToolbarContentInsetStart:I

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v5}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentTab()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
    .param p2    # Lcom/android/contacts/list/ContactsRequest;

    const/4 v2, 0x1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    :goto_0
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-gez v0, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->update(Z)V

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "navBar.searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    const-string v0, "navBar.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "navBar.searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "navBar.query"

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navBar.selectedTab"

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    :cond_1
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0
.end method

.method public setFocusOnSearchView()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->update(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0
.end method
