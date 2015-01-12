.class Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;
.super Landroid/os/AsyncTask;
.source "GoogleReportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;)V
    .locals 0
    .param p1    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;
    .param p2    # Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;

    invoke-direct {p0, p1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;-><init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    .locals 4
    .param p1    # [Ljava/lang/Void;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mCachedNumberLookupServiceImpl:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$300(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v1

    # setter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    invoke-static {v0, v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$202(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$200(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->doInBackground([Ljava/lang/Void;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;)V
    .locals 3
    .param p1    # Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNameText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$500(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    invoke-static {v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$200(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNumberText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$600(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mInfo:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    invoke-static {v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$200(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$700(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNameText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$500(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    # getter for: Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->mNumberText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->access$600(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$DatabaseLookup;->onPostExecute(Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;)V

    return-void
.end method
