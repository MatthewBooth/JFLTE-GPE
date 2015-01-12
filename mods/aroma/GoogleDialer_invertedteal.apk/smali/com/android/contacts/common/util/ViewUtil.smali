.class public Lcom/android/contacts/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$2;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$2;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public static addBottomPaddingToListViewForFab(Landroid/widget/ListView;Landroid/content/res/Resources;)V
    .locals 5
    .param p0    # Landroid/widget/ListView;
    .param p1    # Landroid/content/res/Resources;

    const v1, 0x7f0b001b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    return-void
.end method

.method public static getConstantPreLayoutWidth(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expecting view\'s width to be a constant rather than a result of the layout pass"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v1
.end method

.method public static isViewLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0    # Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/content/res/Resources;

    sget-object v0, Lcom/android/contacts/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v0, 0x7f0b001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method
