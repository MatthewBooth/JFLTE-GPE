.class Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;
.super Ljava/lang/Object;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportConfirmationListener"
.end annotation


# instance fields
.field private final mDestinationUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;Landroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;->mDestinationUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;->mDestinationUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;
    invoke-static {v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ExportVCardActivity;)Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v2, v3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    # invokes: Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V
    invoke-static {v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ExportVCardActivity;)V

    return-void
.end method
