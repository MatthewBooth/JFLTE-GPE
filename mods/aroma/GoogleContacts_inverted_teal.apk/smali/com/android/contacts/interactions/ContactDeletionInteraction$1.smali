.class Lcom/android/contacts/interactions/ContactDeletionInteraction$1;
.super Ljava/lang/Object;
.source "ContactDeletionInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ContactDeletionInteraction;->showDialog(ILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;

.field final synthetic val$contactUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;->this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;

    iput-object p2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;->val$contactUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;->this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;->val$contactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->doDeleteContact(Landroid/net/Uri;)V

    return-void
.end method
