.class public Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2    # Landroid/app/FragmentManager;

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mHasActiveVoicemailProvider:Z
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$700(Lcom/android/dialer/calllog/CallLogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1    # I

    packed-switch p1, :pswitch_data_0

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
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(I)V

    # setter for: Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->access$302(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$300(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(I)V

    # setter for: Lcom/android/dialer/calllog/CallLogActivity;->mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->access$402(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$400(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(I)V

    # setter for: Lcom/android/dialer/calllog/CallLogActivity;->mVoicemailFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->access$502(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mVoicemailFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$500(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$600(Lcom/android/dialer/calllog/CallLogActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
