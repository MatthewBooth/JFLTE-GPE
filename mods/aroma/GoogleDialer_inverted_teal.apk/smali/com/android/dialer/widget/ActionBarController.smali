.class public Lcom/android/dialer/widget/ActionBarController;
.super Ljava/lang/Object;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/ActionBarController$ActivityUi;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

.field private final mFadeOutCallback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

.field private mIsActionBarSlidUp:Z

.field private mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/dialer/DialtactsActivity;->DEBUG:Z

    sput-boolean v0, Lcom/android/dialer/widget/ActionBarController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/widget/ActionBarController$ActivityUi;Lcom/android/dialer/widget/SearchEditTextLayout;)V
    .locals 1
    .param p1    # Lcom/android/dialer/widget/ActionBarController$ActivityUi;
    .param p2    # Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/dialer/widget/ActionBarController$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/widget/ActionBarController$1;-><init>(Lcom/android/dialer/widget/ActionBarController;)V

    iput-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mFadeOutCallback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    iput-object p1, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    iput-object p2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/widget/ActionBarController;)Lcom/android/dialer/widget/ActionBarController$ActivityUi;
    .locals 1
    .param p0    # Lcom/android/dialer/widget/ActionBarController;

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    return-object v0
.end method


# virtual methods
.method public getIsActionBarSlidUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    return v0
.end method

.method public isActionBarShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialpadDown()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/dialer/widget/ActionBarController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ActionBarController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDialpadDown: isInSearchUi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v2}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasSearchQuery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v2}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->hasSearchQuery()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isFadedOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isExpanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->hasSearchQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0, v3, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->expand(ZZ)V

    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->fadeIn()V

    goto :goto_0
.end method

.method public onDialpadUp()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/dialer/widget/ActionBarController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ActionBarController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDialpadUp: isInSearchUi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v2}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v3}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mFadeOutCallback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->fadeOut(Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    goto :goto_0
.end method

.method public onSearchBoxTapped()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/dialer/widget/ActionBarController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ActionBarController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnSearchBoxTapped: isInSearchUi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v2}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0, v3, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->expand(ZZ)V

    :cond_1
    return-void
.end method

.method public onSearchUiExited()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/dialer/widget/ActionBarController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ActionBarController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnSearchUIExited: isExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isFadedOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shouldShowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v2}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->shouldShowActionBar()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->collapse(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->fadeIn()V

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->shouldShowActionBar()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3, v3}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    goto :goto_0
.end method

.method public restoreActionBarOffset()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    const-string v2, "key_actionbar_is_slid_up"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    const-string v2, "key_actionbar_is_faded_out"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisible(Z)V

    :cond_0
    :goto_0
    const-string v2, "key_actionbar_is_expanded"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2, v4, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->expand(ZZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/SearchEditTextLayout;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v2, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->collapse(Z)V

    goto :goto_1
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "key_actionbar_is_slid_up"

    iget-boolean v1, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_actionbar_is_faded_out"

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_actionbar_is_expanded"

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setHideOffset(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->getActionBarHeight()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHideOffset(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public slideActionBar(ZZ)V
    .locals 5
    .param p1    # Z
    .param p2    # Z

    const/4 v4, 0x2

    sget-boolean v1, Lcom/android/dialer/widget/ActionBarController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ActionBarController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sliding actionBar - up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " animate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/android/dialer/widget/ActionBarController$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/widget/ActionBarController$2;-><init>(Lcom/android/dialer/widget/ActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    iput-boolean p1, p0, Lcom/android/dialer/widget/ActionBarController;->mIsActionBarSlidUp:Z

    return-void

    :cond_1
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    invoke-interface {v1}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->getActionBarHeight()I

    move-result v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/ActionBarController;->setHideOffset(I)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
