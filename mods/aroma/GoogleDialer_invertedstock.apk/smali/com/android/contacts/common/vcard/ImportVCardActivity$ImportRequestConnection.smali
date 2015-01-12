.class Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/android/contacts/common/vcard/VCardService;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2    # Lcom/android/contacts/common/vcard/ImportVCardActivity$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const-string v0, "VCardImport"

    const-string v1, "Connected to VCardService. Kick a vCard cache thread (uri: %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->getSourceUris()[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    const-string v0, "VCardImport"

    const-string v1, "Disconnected from VCardService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendImportRequest(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "VCardImport"

    const-string v1, "Send an import request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, v1, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/vcard/VCardService;->handleImportRequest(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    return-void
.end method
