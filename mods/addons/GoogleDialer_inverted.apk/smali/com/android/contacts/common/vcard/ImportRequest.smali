.class public Lcom/android/contacts/common/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final data:[B

.field public final displayName:Ljava/lang/String;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1    # Landroid/accounts/Account;
    .param p2    # [B
    .param p3    # Landroid/net/Uri;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # I
    .param p8    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportRequest;->account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportRequest;->data:[B

    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    iput p5, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedVCardType:I

    iput-object p6, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    iput p7, p0, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    iput p8, p0, Lcom/android/contacts/common/vcard/ImportRequest;->entryCount:I

    return-void
.end method
