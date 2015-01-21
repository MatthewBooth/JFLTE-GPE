.class public Lcom/android/contacts/common/util/ContactListViewUtils;
.super Ljava/lang/Object;
.source "ContactListViewUtils.java"


# direct methods
.method static synthetic access$000(Landroid/widget/ListView;III)V
    .locals 0
    .param p0    # Landroid/widget/ListView;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/common/util/ContactListViewUtils;->addPaddingToView(Landroid/widget/ListView;III)V

    return-void
.end method

.method private static addPaddingToView(Landroid/widget/ListView;III)V
    .locals 8
    .param p0    # Landroid/widget/ListView;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const-wide v6, 0x3ff199999999999aL

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    int-to-double v2, p2

    mul-int/lit8 v4, p2, 0x2

    add-int/2addr v4, p3

    int-to-double v4, v4

    div-double v0, v2, v4

    int-to-double v2, p1

    mul-double/2addr v2, v0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    int-to-double v4, p1

    mul-double/2addr v4, v0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    const/high16 v2, 0x2000000

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method

.method public static applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V
    .locals 5
    .param p0    # Landroid/content/res/Resources;
    .param p1    # Landroid/widget/ListView;
    .param p2    # Landroid/view/View;

    const/4 v4, 0x0

    const v3, 0x7f0a0008

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v3, 0x7f0a0009

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v3, 0x7f0e0044

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a list card view who can be turned visible whenever it is necessary."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/android/contacts/common/util/ContactListViewUtils$1;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/android/contacts/common/util/ContactListViewUtils$1;-><init>(Landroid/widget/ListView;Landroid/view/View;II)V

    invoke-static {p1, v4, v3}, Lcom/android/contacts/common/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method
