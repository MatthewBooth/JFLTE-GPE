.class public abstract Lcom/android/dialerbind/analytics/AnalyticsActivity;
.super Landroid/app/Activity;
.source "AnalyticsActivity.java"


# instance fields
.field private mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsActivity;->mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsActivity;->mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsActivity;->mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsActivity;->mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public sendScreenView()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
