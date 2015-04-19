.class public abstract Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AnalyticsPreferenceActivity.java"


# instance fields
.field private mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;->mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;->mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;->mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;->mAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method
