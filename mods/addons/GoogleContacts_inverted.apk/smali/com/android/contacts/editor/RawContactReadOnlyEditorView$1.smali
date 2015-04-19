.class Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;
.super Ljava/lang/Object;
.source "RawContactReadOnlyEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactReadOnlyEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->access$000(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->access$100(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0182

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
