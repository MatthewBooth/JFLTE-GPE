.class public abstract Lcom/android/systemui/statusbar/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "ExpandableOutlineView.java"


# instance fields
.field private mCustomOutline:Z

.field private final mOutlineRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public setActualHeight(IZ)V
    .locals 0
    .param p1    # I
    .param p2    # Z

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1    # I

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .locals 5
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .locals 4
    .param p1    # Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineRect(FFFF)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    goto :goto_0
.end method
