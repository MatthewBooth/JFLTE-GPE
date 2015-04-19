.class Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/common/list/ViewPagerTabs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1    # I
    .param p2    # F
    .param p3    # I

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/common/list/ViewPagerTabs;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/common/list/ViewPagerTabs;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/common/list/ViewPagerTabs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->onPageSelected(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V
    invoke-static {v0, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$300(Lcom/android/contacts/activities/PeopleActivity;I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
