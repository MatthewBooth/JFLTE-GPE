.class Lcom/android/contacts/editor/EventFieldEditorView$1;
.super Ljava/lang/Object;
.source "EventFieldEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EventFieldEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EventFieldEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/EventFieldEditorView$1;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView$1;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    const v1, 0x7f0e001f

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->showDialog(I)V

    return-void
.end method
