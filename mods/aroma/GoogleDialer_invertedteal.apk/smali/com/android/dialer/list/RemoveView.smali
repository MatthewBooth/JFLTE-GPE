.class public Lcom/android/dialer/list/RemoveView;
.super Landroid/widget/FrameLayout;
.source "RemoveView.java"


# instance fields
.field mDragDropController:Lcom/android/dialer/list/DragDropController;

.field mHighlightedColor:I

.field mRemoveDrawable:Landroid/graphics/drawable/Drawable;

.field mRemoveIcon:Landroid/widget/ImageView;

.field mRemoveText:Landroid/widget/TextView;

.field mUnhighlightedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/list/RemoveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setAppearanceHighlighted()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/list/RemoveView;->mHighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/dialer/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/RemoveView;->mHighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0}, Lcom/android/dialer/list/RemoveView;->invalidate()V

    return-void
.end method

.method private setAppearanceNormal()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/list/RemoveView;->mUnhighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/dialer/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/RemoveView;->mUnhighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0}, Lcom/android/dialer/list/RemoveView;->invalidate()V

    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1    # Landroid/view/DragEvent;

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    invoke-direct {p0}, Lcom/android/dialer/list/RemoveView;->setAppearanceHighlighted()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/dialer/list/RemoveView;->setAppearanceNormal()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/dialer/list/DragDropController;->handleDragHovered(Landroid/view/View;II)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dialer/list/DragDropController;->handleDragFinished(IIZ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/list/RemoveView;->setAppearanceNormal()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    const v1, 0x7f0e00e7

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/RemoveView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    const v1, 0x7f0e00e6

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/RemoveView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/dialer/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/dialer/list/RemoveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/RemoveView;->mUnhighlightedColor:I

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/RemoveView;->mHighlightedColor:I

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/RemoveView;->mRemoveDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDragDropController(Lcom/android/dialer/list/DragDropController;)V
    .locals 0
    .param p1    # Lcom/android/dialer/list/DragDropController;

    iput-object p1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    return-void
.end method
