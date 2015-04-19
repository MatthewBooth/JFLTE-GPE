.class public Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;
.super Lcom/android/dialerbind/analytics/AnalyticsDialogFragment;
.source "GoogleReportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;,
        Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;
    }
.end annotation


# static fields
.field private static final mCachedNumberLookupServiceImpl:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;


# instance fields
.field private mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

.field private mNameText:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field private mNumberText:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mReportFailed:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    invoke-direct {v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;-><init>()V

    sput-object v0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mCachedNumberLookupServiceImpl:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    .locals 0
    .param p0    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;
    .param p1    # Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    iput-object p1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    .locals 1

    sget-object v0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mCachedNumberLookupServiceImpl:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNumberText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mReportFailed:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->reportBadData(Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;
    .locals 3
    .param p0    # Ljava/lang/String;

    new-instance v1, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    invoke-direct {v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "number"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private reportBadData(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->onBadDataReported(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsDialogFragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->sendScreenView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/dialer/calllog/CallLogFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Target fragment must be an instance of CallLogFragment."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08029a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mReportFailed:Landroid/widget/Toast;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04002d

    invoke-virtual {v0, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    const v2, 0x7f0e002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNameText:Landroid/widget/TextView;

    const v2, 0x7f0e002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNumberText:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;

    invoke-direct {v2, p0, v5}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;-><init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080299

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080147

    new-instance v4, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$2;-><init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0802a2

    new-instance v4, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;-><init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->reportBadData(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsDialogFragment;->onPause()V

    invoke-virtual {p0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->dismiss()V

    return-void
.end method
