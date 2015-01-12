.class Lcom/android/contacts/ContactSaveService$2;
.super Ljava/lang/Object;
.source "ContactSaveService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactSaveService;

.field final synthetic val$callbackIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactSaveService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/ContactSaveService$2;->this$0:Lcom/android/contacts/ContactSaveService;

    iput-object p2, p0, Lcom/android/contacts/ContactSaveService$2;->val$callbackIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/ContactSaveService$2;->this$0:Lcom/android/contacts/ContactSaveService;

    iget-object v1, p0, Lcom/android/contacts/ContactSaveService$2;->val$callbackIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactSaveService;->deliverCallbackOnUiThread(Landroid/content/Intent;)V

    return-void
.end method
