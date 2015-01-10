.class Lcom/android/systemui/DessertCaseView$2;
.super Ljava/lang/Object;
.source "DessertCaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCaseView;

.field final synthetic val$v:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    iput-object p2, p0, Lcom/android/systemui/DessertCaseView$2;->val$v:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView$2;->val$v:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    new-instance v1, Lcom/android/systemui/DessertCaseView$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCaseView$2$1;-><init>(Lcom/android/systemui/DessertCaseView$2;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/DessertCaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
