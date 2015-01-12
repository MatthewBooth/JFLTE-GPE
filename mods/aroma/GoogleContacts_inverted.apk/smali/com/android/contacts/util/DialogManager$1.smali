.class Lcom/android/contacts/util/DialogManager$1;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/DialogManager;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/contacts/util/DialogManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/util/DialogManager$1;->this$0:Lcom/android/contacts/util/DialogManager;

    iput p2, p0, Lcom/android/contacts/util/DialogManager$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/contacts/util/DialogManager$1;->this$0:Lcom/android/contacts/util/DialogManager;

    # getter for: Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/contacts/util/DialogManager;->access$000(Lcom/android/contacts/util/DialogManager;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/util/DialogManager$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    return-void
.end method
