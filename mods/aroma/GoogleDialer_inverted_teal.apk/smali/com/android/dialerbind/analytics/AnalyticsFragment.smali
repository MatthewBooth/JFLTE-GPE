.class public abstract Lcom/android/dialerbind/analytics/AnalyticsFragment;
.super Landroid/app/Fragment;
.source "AnalyticsFragment.java"


# instance fields
.field mActivity:Lcom/android/dialerbind/analytics/AnalyticsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/android/dialerbind/analytics/AnalyticsActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/dialerbind/analytics/AnalyticsActivity;

    iput-object p1, p0, Lcom/android/dialerbind/analytics/AnalyticsFragment;->mActivity:Lcom/android/dialerbind/analytics/AnalyticsActivity;

    :cond_0
    return-void
.end method

.method public sendScreenView()V
    .locals 6

    iget-object v2, p0, Lcom/android/dialerbind/analytics/AnalyticsFragment;->mActivity:Lcom/android/dialerbind/analytics/AnalyticsActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialerbind/analytics/AnalyticsFragment;->mActivity:Lcom/android/dialerbind/analytics/AnalyticsActivity;

    invoke-virtual {v2}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->getTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/dialerbind/analytics/AnalyticsFragment;->mActivity:Lcom/android/dialerbind/analytics/AnalyticsActivity;

    invoke-virtual {v2}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->sendScreenView()V

    :cond_1
    return-void
.end method
