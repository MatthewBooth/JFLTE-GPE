.class public Lcom/android/contacts/common/vcard/CancelRequest;
.super Ljava/lang/Object;
.source "CancelRequest.java"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final jobId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    iput-object p2, p0, Lcom/android/contacts/common/vcard/CancelRequest;->displayName:Ljava/lang/String;

    return-void
.end method
