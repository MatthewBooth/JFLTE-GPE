.class Lcom/android/contacts/common/dialog/IndeterminateProgressDialog$1;
.super Ljava/lang/Object;
.source "IndeterminateProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog$1;->this$0:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog$1;->this$0:Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    # invokes: Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->superDismiss()V
    invoke-static {v0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->access$000(Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V

    return-void
.end method
