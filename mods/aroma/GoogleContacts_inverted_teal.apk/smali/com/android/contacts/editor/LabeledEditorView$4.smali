.class Lcom/android/contacts/editor/LabeledEditorView$4;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->val$dialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/LabeledEditorView;->updateCustomDialogOkButtonState(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    return-void
.end method
