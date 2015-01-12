.class public Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "ListsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/ListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/ListsFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/list/ListsFragment;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2    # Landroid/app/FragmentManager;

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 8
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    new-instance v1, Lcom/android/dialer/list/SpeedDialFragment;

    invoke-direct {v1}, Lcom/android/dialer/list/SpeedDialFragment;-><init>()V

    # setter for: Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;
    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->access$502(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;
    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->access$500(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/list/SpeedDialFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, -0x1

    const/16 v3, 0x14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    sub-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(IIJ)V

    # setter for: Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->access$602(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->access$600(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setHasFooterView(Z)V

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->access$600(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    new-instance v1, Lcom/android/dialer/list/AllContactsFragment;

    invoke-direct {v1}, Lcom/android/dialer/list/AllContactsFragment;-><init>()V

    # setter for: Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;
    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->access$702(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/AllContactsFragment;)Lcom/android/dialer/list/AllContactsFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;
    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->access$700(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/list/AllContactsFragment;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->access$800(Lcom/android/dialer/list/ListsFragment;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    instance-of v1, v0, Lcom/android/dialer/list/SpeedDialFragment;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/list/SpeedDialFragment;

    # setter for: Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;
    invoke-static {v2, v1}, Lcom/android/dialer/list/ListsFragment;->access$502(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/SpeedDialFragment;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, v0, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/calllog/CallLogFragment;

    # setter for: Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v2, v1}, Lcom/android/dialer/list/ListsFragment;->access$602(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/android/dialer/list/AllContactsFragment;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/list/AllContactsFragment;

    # setter for: Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;
    invoke-static {v2, v1}, Lcom/android/dialer/list/ListsFragment;->access$702(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/AllContactsFragment;)Lcom/android/dialer/list/AllContactsFragment;

    goto :goto_0
.end method
