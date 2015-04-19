.class Lcom/android/contacts/editor/RawContactEditorView$1;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # invokes: Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V
    invoke-static {v0}, Lcom/android/contacts/editor/RawContactEditorView;->access$000(Lcom/android/contacts/editor/RawContactEditorView;)V

    return-void
.end method
