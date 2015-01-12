.class public Lcom/android/contacts/common/vcard/ExportRequest;
.super Ljava/lang/Object;
.source "ExportRequest.java"


# instance fields
.field public final destUri:Landroid/net/Uri;

.field public final exportType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    return-void
.end method
