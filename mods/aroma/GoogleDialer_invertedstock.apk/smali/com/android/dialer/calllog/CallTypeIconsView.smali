.class public Lcom/android/dialer/calllog/CallTypeIconsView;
.super Landroid/view/View;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallTypeIconsView$Resources;
    }
.end annotation


# instance fields
.field private mCallTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

.field private mShowVideo:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mShowVideo:Z

    new-instance v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    invoke-direct {v0, p1}, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    return-void
.end method

.method private getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget v3, v3, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallTypeIconsView;->invalidate()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallTypeIconsView;->invalidate()V

    return-void
.end method

.method public getCallType(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isVideoShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mShowVideo:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/dialer/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v4, v3, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget v5, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int v3, v4, v5

    goto :goto_0

    :cond_0
    iget-boolean v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mShowVideo:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v1, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v5, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v4, v3, v5

    iget-object v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v5, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/calllog/CallTypeIconsView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setShowVideo(Z)V
    .locals 2
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mShowVideo:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    iget v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallTypeIconsView;->invalidate()V

    :cond_0
    return-void
.end method
