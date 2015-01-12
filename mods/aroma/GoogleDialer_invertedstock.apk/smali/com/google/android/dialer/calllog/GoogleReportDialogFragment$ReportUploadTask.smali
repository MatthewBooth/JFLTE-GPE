.class Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;
.super Landroid/os/AsyncTask;
.source "GoogleReportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;)V
    .locals 0
    .param p1    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;
    .param p2    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;

    invoke-direct {p0, p1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;-><init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # [Ljava/lang/Void;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    invoke-static {v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$200(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/dialer/calllog/GoogleCallerIdReporter;->report(Landroid/content/Context;Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mCachedNumberLookupServiceImpl:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    invoke-static {v2}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$200(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V

    const-string v0, "GoogleReportDialogFragment"

    const-string v1, "Contact reported."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mReportFailed:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$800(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$300(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->reportBadData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$900(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
