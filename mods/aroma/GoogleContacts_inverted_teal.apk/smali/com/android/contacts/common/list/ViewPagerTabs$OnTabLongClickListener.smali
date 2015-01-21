.class Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;
.super Ljava/lang/Object;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ViewPagerTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabLongClickListener"
.end annotation


# instance fields
.field final mPosition:I

.field final synthetic this$0:Lcom/android/contacts/common/list/ViewPagerTabs;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->mPosition:I

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1    # Landroid/view/View;

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x2

    new-array v2, v6, [I

    iget-object v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v6, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ViewPagerTabs;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ViewPagerTabs;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v6, v6, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    iget v7, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->mPosition:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    const/16 v6, 0x31

    aget v7, v2, v8

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    aget v8, v2, v9

    add-int/2addr v8, v1

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v9
.end method
