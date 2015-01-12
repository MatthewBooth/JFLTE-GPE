.class public Lcom/android/dialerbind/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# direct methods
.method public static getReportDialogFragment(Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;
    .locals 1

    new-instance v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    invoke-direct {v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;-><init>()V

    return-object v0
.end method

.method public static newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;Z)Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    .param p2    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p3    # Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;
    .param p4    # Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;
    .param p5    # Z

    if-eqz p5, :cond_0

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;Z)V

    goto :goto_0
.end method
