.class Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;
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

    iput-object p1, p0, Lcom/google/android/dialer/calllog/GoogleReportDialogFragment$1;->this$0:Lcom/google/android/dialer/calllog/GoogleReportDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
