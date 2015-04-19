.class Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$2;
.super Ljava/lang/Object;
.source "GoogleReportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$2;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    new-instance v0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$2;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;-><init>(Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$ReportUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
