.class public abstract Lcom/android/dialer/activity/TransactionSafeActivity;
.super Lcom/android/dialerbind/analytics/AnalyticsActivity;
.source "TransactionSafeActivity.java"


# instance fields
.field private mIsSafeToCommitTransactions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isSafeToCommitTransactions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method
