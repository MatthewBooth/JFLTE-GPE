.class public Lcom/android/dialer/list/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/DragDropController$DragItemContainer;
    }
.end annotation


# instance fields
.field private final mDragItemContainer:Lcom/android/dialer/list/DragDropController$DragItemContainer;

.field private final mLocationOnScreen:[I

.field private final mOnDragDropListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/list/OnDragDropListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dialer/list/DragDropController$DragItemContainer;)V
    .locals 1
    .param p1    # Lcom/android/dialer/list/DragDropController$DragItemContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    iput-object p1, p0, Lcom/android/dialer/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/list/DragDropController$DragItemContainer;

    return-void
.end method


# virtual methods
.method public addOnDragDropListener(Lcom/android/dialer/list/OnDragDropListener;)V
    .locals 1
    .param p1    # Lcom/android/dialer/list/OnDragDropListener;

    iget-object v0, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public handleDragFinished(IIZ)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/OnDragDropListener;

    invoke-interface {v1}, Lcom/android/dialer/list/OnDragDropListener;->onDroppedOnRemove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/OnDragDropListener;

    invoke-interface {v1, p1, p2}, Lcom/android/dialer/list/OnDragDropListener;->onDragFinished(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public handleDragHovered(Landroid/view/View;II)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v1, p2, v4

    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v2, p3, v4

    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/list/DragDropController$DragItemContainer;

    invoke-interface {v4, v1, v2}, Lcom/android/dialer/list/DragDropController$DragItemContainer;->getViewForLocation(II)Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/list/OnDragDropListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/android/dialer/list/OnDragDropListener;->onDragHovered(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method handleDragStarted(II)Z
    .locals 3
    .param p1    # I
    .param p2    # I

    iget-object v2, p0, Lcom/android/dialer/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/list/DragDropController$DragItemContainer;

    invoke-interface {v2, p1, p2}, Lcom/android/dialer/list/DragDropController$DragItemContainer;->getViewForLocation(II)Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/list/OnDragDropListener;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/dialer/list/OnDragDropListener;->onDragStarted(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
