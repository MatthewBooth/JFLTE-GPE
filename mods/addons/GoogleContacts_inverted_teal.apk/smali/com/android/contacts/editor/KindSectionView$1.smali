.class Lcom/android/contacts/editor/KindSectionView$1;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    # getter for: Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/editor/KindSectionView;->access$000(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->addItem()V

    return-void
.end method
