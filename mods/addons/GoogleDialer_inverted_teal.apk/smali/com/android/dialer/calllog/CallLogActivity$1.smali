.class Lcom/android/dialer/calllog/CallLogActivity$1;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$100(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/contacts/common/list/ViewPagerTabs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogActivity;->access$000(Lcom/android/dialer/calllog/CallLogActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$000(Lcom/android/dialer/calllog/CallLogActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # setter for: Lcom/android/dialer/calllog/CallLogActivity;->mSwitchToVoicemailTab:Z
    invoke-static {v0, v2}, Lcom/android/dialer/calllog/CallLogActivity;->access$202(Lcom/android/dialer/calllog/CallLogActivity;Z)Z

    return-void
.end method
