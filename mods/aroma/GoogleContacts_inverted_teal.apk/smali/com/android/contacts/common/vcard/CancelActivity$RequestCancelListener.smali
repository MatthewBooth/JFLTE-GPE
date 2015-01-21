.class Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;
.super Ljava/lang/Object;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/CancelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/CancelActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/CancelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/CancelActivity;
    .param p2    # Lcom/android/contacts/common/vcard/CancelActivity$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    const-class v3, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/common/vcard/CancelActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
