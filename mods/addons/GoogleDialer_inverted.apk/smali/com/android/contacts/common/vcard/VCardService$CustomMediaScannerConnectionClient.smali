.class Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
.super Ljava/lang/Object;
.source "VCardService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/VCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMediaScannerConnectionClient"
.end annotation


# instance fields
.field final mConnection:Landroid/media/MediaScannerConnection;

.field final mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->this$0:Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->this$0:Lcom/android/contacts/common/vcard/VCardService;

    # invokes: Lcom/android/contacts/common/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    invoke-static {v0, p0}, Lcom/android/contacts/common/vcard/VCardService;->access$000(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method
