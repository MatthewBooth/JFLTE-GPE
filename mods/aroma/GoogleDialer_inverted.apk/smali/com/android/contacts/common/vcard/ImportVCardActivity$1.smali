.class Lcom/android/contacts/common/vcard/ImportVCardActivity$1;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

.field final synthetic val$uris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;)V

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$202(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {v1, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    :cond_0
    return-void
.end method
