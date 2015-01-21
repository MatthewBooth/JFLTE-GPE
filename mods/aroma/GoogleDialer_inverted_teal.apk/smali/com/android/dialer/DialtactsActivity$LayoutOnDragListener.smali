.class Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutOnDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/DialtactsActivity;Lcom/android/dialer/DialtactsActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/dialer/DialtactsActivity;
    .param p2    # Lcom/android/dialer/DialtactsActivity$1;

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/DragEvent;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mDragDropController:Lcom/android/dialer/list/DragDropController;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$200(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/DragDropController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/dialer/list/DragDropController;->handleDragHovered(Landroid/view/View;II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
