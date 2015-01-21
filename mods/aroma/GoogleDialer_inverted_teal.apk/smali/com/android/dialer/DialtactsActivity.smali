.class public Lcom/android/dialer/DialtactsActivity;
.super Lcom/android/dialer/activity/TransactionSafeActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
.implements Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;
.implements Lcom/android/dialer/list/ListsFragment$HostInterface;
.implements Lcom/android/dialer/list/OnDragDropListener;
.implements Lcom/android/dialer/list/OnListFragmentScrolledListener;
.implements Lcom/android/dialer/list/SearchFragment$HostInterface;
.implements Lcom/android/dialer/list/SpeedDialFragment$HostInterface;
.implements Lcom/android/dialer/widget/ActionBarController$ActivityUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;,
        Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mActionBarController:Lcom/android/dialer/widget/ActionBarController;

.field private mActionBarHeight:I

.field private mClearSearchOnPause:Z

.field private mCurrentTabPosition:I

.field private mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

.field private mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

.field private mDragDropController:Lcom/android/dialer/list/DragDropController;

.field private mFirstLaunch:Z

.field private mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

.field private mInCallDialpadUp:Z

.field private mInDialpadSearch:Z

.field private mInRegularSearch:Z

.field private mIsDialpadShown:Z

.field private mIsLandscape:Z

.field private mListsFragment:Lcom/android/dialer/list/ListsFragment;

.field private mOverflowMenu:Landroid/widget/PopupMenu;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPendingSearchViewQuery:Ljava/lang/String;

.field private final mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

.field private mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

.field private final mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/EditText;

.field private final mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

.field private mShowDialpadOnResume:Z

.field private mSlideIn:Landroid/view/animation/Animation;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

.field private mVoiceSearchButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DialtactsActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/dialer/DialtactsActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/activity/TransactionSafeActivity;-><init>()V

    new-instance v0, Lcom/android/dialer/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$1;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/DialtactsActivity;->mCurrentTabPosition:I

    new-instance v0, Lcom/android/dialer/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$2;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/dialer/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$3;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/dialer/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$4;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->commitDialpadFragmentHide()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/ListsFragment;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/widget/ActionBarController;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/dialer/DialtactsActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->maybeExitSearchUi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/DialtactsActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/dialer/DialtactsActivity;Z)V
    .locals 0
    .param p0    # Lcom/android/dialer/DialtactsActivity;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->updateFloatingActionButtonControllerAlignment(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/DragDropController;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/dialer/DialtactsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/dialer/DialtactsActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/dialer/DialtactsActivity;ZLjava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/dialer/DialtactsActivity;
    .param p1    # Z
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;
    .locals 1
    .param p0    # Lcom/android/dialer/DialtactsActivity;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    return-object v0
.end method

.method private buildOptionsMenu(Landroid/view/View;)Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;
    .locals 3
    .param p1    # Landroid/view/View;

    new-instance v1, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;-><init>(Lcom/android/dialer/DialtactsActivity;Landroid/content/Context;Landroid/view/View;)V

    const v2, 0x7f100004

    invoke-virtual {v1, v2}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->inflate(I)V

    invoke-virtual {v1}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {v1, p0}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v1
.end method

.method private canIntentBeHandled(Landroid/content/Intent;)Z
    .locals 3
    .param p1    # Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commitDialpadFragmentHide()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    return-void
.end method

.method private displayFragment(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    goto :goto_0
.end method

.method private enterSearchUi(ZLjava/lang/String;)V
    .locals 8
    .param p1    # Z
    .param p2    # Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v3, Lcom/android/dialer/DialtactsActivity;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "DialtactsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entering search UI - smart dial "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    const-string v1, "smartdial"

    :goto_2
    iput-boolean p1, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    if-nez p1, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SearchFragment;

    const/high16 v3, 0x10b0000

    invoke-virtual {v2, v3, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-direct {v0}, Lcom/android/dialer/list/SmartDialSearchFragment;-><init>()V

    :goto_4
    const v3, 0x7f0e00cf

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_5
    invoke-virtual {v0, v5}, Lcom/android/dialer/list/SearchFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {v0, v4}, Lcom/android/dialer/list/SearchFragment;->setShowEmptyListForNullQuery(Z)V

    invoke-virtual {v0, p2, v5}, Lcom/android/dialer/list/SearchFragment;->setQueryString(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v3}, Lcom/android/dialer/list/ListsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_4
    const-string v1, "search"

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/android/dialer/list/RegularSearchFragment;

    invoke-direct {v0}, Lcom/android/dialer/list/RegularSearchFragment;-><init>()V

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_5
.end method

.method private exitSearchUi()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setNotInSearchUi()V

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/ListsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v1}, Lcom/android/dialer/widget/ActionBarController;->onSearchUiExited()V

    goto :goto_0
.end method

.method public static getAddNumberToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p0    # Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.SHOW_CALL_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private hideDialpadAndSearchUi()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    goto :goto_0
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1    # Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;)Z
    .locals 4
    .param p1    # Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private maybeExitSearchUi()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method private prepareVoiceSearchButton()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->canIntentBeHandled(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNotInSearchUi()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    return-void
.end method

.method private setupActivityOverlay()V
    .locals 2

    const v1, 0x7f0e00d2

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/DialtactsActivity$7;

    invoke-direct {v1, p0}, Lcom/android/dialer/DialtactsActivity$7;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showDialpadFragment(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setAnimate(Z)V

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->sendScreenView()V

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v1}, Lcom/android/dialer/widget/ActionBarController;->onDialpadUp()V

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    goto :goto_1
.end method

.method private updateFloatingActionButtonControllerAlignment(Z)V
    .locals 3
    .param p1    # Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/dialer/DialtactsActivity;->mCurrentTabPosition:I

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v2, v0, v1, v1, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IIIZ)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateSearchFragmentPosition()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/SmartDialSearchFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/list/SearchFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SearchFragment;->updatePosition(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/RegularSearchFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/interactions/TouchPointManager;->setPoint(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/dialer/activity/TransactionSafeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getActionBarHeight()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarHeight:I

    return v0
.end method

.method public getCallOrigin()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.dialer.DialtactsActivity"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMenuSettings()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/settings/DialerSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public hasSearchQuery()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideDialpadFragment(ZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setAnimate(Z)V

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->updateSearchFragmentPosition()V

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->updateFloatingActionButtonControllerAlignment(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0}, Lcom/android/dialer/widget/ActionBarController;->onDialpadDown()V

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->commitDialpadFragmentHide()V

    goto :goto_1
.end method

.method public isActionBarShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0}, Lcom/android/dialer/widget/ActionBarController;->isActionBarShowing()Z

    move-result v0

    return v0
.end method

.method public isDialpadShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    return v0
.end method

.method public isInSearchUi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/activity/TransactionSafeActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const-string v2, "DialtactsActivity"

    const-string v3, "Voice search - nothing heard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "DialtactsActivity"

    const-string v3, "Voice search failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1    # Landroid/app/Fragment;

    instance-of v1, p1, Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/dialer/dialpad/DialpadFragment;

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mShowDialpadOnResume:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/dialer/list/SmartDialSearchFragment;

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v1, p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/dialer/list/SearchFragment;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/android/dialer/list/RegularSearchFragment;

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v1, p0}, Lcom/android/dialer/list/RegularSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/android/dialer/list/ListsFragment;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/dialer/list/ListsFragment;

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1, p0}, Lcom/android/dialer/list/ListsFragment;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SmartDialSearchFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/android/dialer/activity/TransactionSafeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/DialtactsActivity;->onCallNumberDirectly(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCallNumberDirectly(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/CallUtil;->getVideoCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected onClick event from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    invoke-direct {p0, v2}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    goto :goto_0

    :sswitch_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/dialer/DialtactsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v1, 0x7f08024d

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e00d1 -> :sswitch_0
        0x7f0e010d -> :sswitch_1
        0x7f0e010e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/android/dialer/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v8, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b00ad

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarHeight:I

    const v7, 0x7f040029

    invoke-virtual {p0, v7}, Lcom/android/dialer/DialtactsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v7, 0x7f04003b

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {v9, p0, v7}, Lcom/android/dialer/widget/ActionBarController;-><init>(Lcom/android/dialer/widget/ActionBarController$ActivityUi;Lcom/android/dialer/widget/SearchEditTextLayout;)V

    iput-object v9, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/widget/SearchEditTextLayout;

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->setPreImeKeyListener(Landroid/view/View$OnKeyListener;)V

    const v7, 0x7f0e0107

    invoke-virtual {v6, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v7, 0x7f0e010d

    invoke-virtual {v6, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    const v7, 0x7f0e010b

    invoke-virtual {v6, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0e010c

    invoke-virtual {v6, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/dialer/DialtactsActivity$5;

    invoke-direct {v7, p0}, Lcom/android/dialer/DialtactsActivity$5;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    invoke-virtual {v6, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->setOnBackButtonClickedListener(Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;)V

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    const v7, 0x7f0e00d0

    invoke-virtual {p0, v7}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f0e00d1

    invoke-virtual {p0, v7}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {v7, p0, v2, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const v7, 0x7f0e010e

    invoke-virtual {v6, v7}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v6}, Lcom/android/dialer/DialtactsActivity;->buildOptionsMenu(Landroid/view/View;)Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f0e00cf

    new-instance v9, Lcom/android/dialer/list/ListsFragment;

    invoke-direct {v9}, Lcom/android/dialer/list/ListsFragment;-><init>()V

    const-string v10, "favorites"

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f0e00ce

    new-instance v9, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {v9}, Lcom/android/dialer/dialpad/DialpadFragment;-><init>()V

    const-string v10, "dialpad"

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    :goto_1
    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isRtl()Z

    move-result v3

    iget-boolean v7, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    if-eqz v7, :cond_4

    if-eqz v3, :cond_2

    const v7, 0x7f050006

    :goto_2
    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    const v7, 0x7f050009

    :goto_3
    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    :goto_4
    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v7, 0x7f0e00cd

    invoke-virtual {p0, v7}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;

    invoke-direct {v8, p0, v11}, Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;-><init>(Lcom/android/dialer/DialtactsActivity;Lcom/android/dialer/DialtactsActivity$1;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/android/dialer/DialtactsActivity$6;

    invoke-direct {v8, p0, v2}, Lcom/android/dialer/DialtactsActivity$6;-><init>(Lcom/android/dialer/DialtactsActivity;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setupActivityOverlay()V

    invoke-static {p0}, Lcom/android/dialerbind/DatabaseHelperManager;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-static {p0}, Lcom/android/dialer/dialpad/SmartDialPrefix;->initializeNanpSettings(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_1
    const-string v7, "search_query"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    const-string v7, "in_regular_search_ui"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    const-string v7, "in_dialpad_search_ui"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    const-string v7, "first_launch"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    const-string v7, "is_dialpad_shown"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/dialer/DialtactsActivity;->mShowDialpadOnResume:Z

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v7, p1}, Lcom/android/dialer/widget/ActionBarController;->restoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_2
    const v7, 0x7f050007

    goto/16 :goto_2

    :cond_3
    const v7, 0x7f05000a

    goto/16 :goto_3

    :cond_4
    const v7, 0x7f050005

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    const v7, 0x7f050008

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0}, Lcom/android/dialer/widget/ActionBarController;->restoreActionBarOffset()V

    const/4 v0, 0x0

    return v0
.end method

.method public onDialpadQueryChanged(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v1, p1}, Lcom/android/dialer/list/SmartDialSearchFragment;->setAddToContactNumber(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-static {p1, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/dialer/DialtactsActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialpadQueryChanged - new query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDialpadShown()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->updateSearchFragmentPosition()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setYFraction(F)V

    goto :goto_0
.end method

.method public onDragFinished(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->isPaneOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/ActionBarController;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/ListsFragment;->showRemoveView(Z)V

    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    return-void
.end method

.method public onDragStarted(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->isPaneOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/ActionBarController;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/ListsFragment;->showRemoveView(Z)V

    return-void
.end method

.method public onDroppedOnRemove()V
    .locals 0

    return-void
.end method

.method public onHomeInActionBarSelected()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method public onListFragmentScroll(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onListFragmentScrollStateChange(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1    # Landroid/view/MenuItem;

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v2, v3

    :goto_1
    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->showCallHistory()V

    goto :goto_0

    :pswitch_2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v2, 0x7f08024c

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/android/dialer/DialtactsActivity;

    invoke-static {v3, v2, v4}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->handleMenuSettings()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0e012a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->displayFragment(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1    # I
    .param p2    # F
    .param p3    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v3, p1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result p1

    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v1

    :goto_0
    if-ne p1, v3, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    if-eqz v0, :cond_0

    sub-float p2, v4, p2

    :cond_0
    invoke-virtual {v2, p2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->onPageScrolled(F)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->onPageScrolled(F)V

    goto :goto_2
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/DialtactsActivity;->mCurrentTabPosition:I

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->hideDialpadAndSearchUi()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    :cond_0
    invoke-super {p0}, Lcom/android/dialer/activity/TransactionSafeActivity;->onPause()V

    return-void
.end method

.method public onPickPhoneNumberAction(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/dialer/activity/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/dialer/activity/TransactionSafeActivity;->onResume()V

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->displayFragment(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->prepareVoiceSearchButton()V

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/dialer/database/DialerDatabaseHelper;->startSmartDialUpdateThread()V

    invoke-direct {p0, v1}, Lcom/android/dialer/DialtactsActivity;->updateFloatingActionButtonControllerAlignment(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mShowDialpadOnResume:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mShowDialpadOnResume:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialer/activity/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "search_query"

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "in_regular_search_ui"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "in_dialpad_search_ui"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "first_launch"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_dialpad_shown"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/dialer/widget/ActionBarController;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported intent has come ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/dialer/widget/ActionBarController;->setHideOffset(I)V

    return-void
.end method

.method public setDragDropController(Lcom/android/dialer/list/DragDropController;)V
    .locals 1
    .param p1    # Lcom/android/dialer/list/DragDropController;

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->getRemoveView()Lcom/android/dialer/list/RemoveView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/RemoveView;->setDragDropController(Lcom/android/dialer/list/DragDropController;)V

    return-void
.end method

.method public shouldShowActionBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->shouldShowActionBar()Z

    move-result v0

    return v0
.end method

.method public showCallHistory()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/calllog/CallLogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
