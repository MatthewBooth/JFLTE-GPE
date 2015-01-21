.class Lcom/android/incallui/PostCharDialogFragment$2;
.super Ljava/lang/Object;
.source "PostCharDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/PostCharDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PostCharDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/PostCharDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/PostCharDialogFragment$2;->this$0:Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
