.class Lcom/android/contacts/editor/RawContactEditorView$2;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactEditorView;->mAddOrganizationButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$100(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationSectionViewContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/contacts/editor/RawContactEditorView;->access$200(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/EditorAnimator;->expandOrganization(Landroid/view/View;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationViewExpanded:Z
    invoke-static {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$302(Lcom/android/contacts/editor/RawContactEditorView;Z)Z

    return-void
.end method
