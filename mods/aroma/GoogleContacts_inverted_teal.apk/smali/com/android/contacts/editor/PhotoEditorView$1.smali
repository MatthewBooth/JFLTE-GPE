.class Lcom/android/contacts/editor/PhotoEditorView$1;
.super Ljava/lang/Object;
.source "PhotoEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    # getter for: Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-static {v0}, Lcom/android/contacts/editor/PhotoEditorView;->access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    # getter for: Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-static {v0}, Lcom/android/contacts/editor/PhotoEditorView;->access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    :cond_0
    return-void
.end method
