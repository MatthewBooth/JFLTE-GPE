.class public Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
.super Landroid/database/DataSetObserver;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PseudoGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewGroupAdapterBridge"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/BaseAdapter;

.field private mReleased:Z

.field private final mViewGroup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mViewGroup:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    iget-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->refresh()V

    return-void
.end method

.method public static link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
    .param p1    # Landroid/widget/BaseAdapter;

    new-instance v0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;-><init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method private refresh()V
    .locals 9

    iget-boolean v8, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mViewGroup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->release()V

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    if-ge v3, v1, :cond_6

    const/4 v6, 0x0

    if-ge v3, v2, :cond_3

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8, v3, v6, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-nez v6, :cond_5

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-eq v6, v5, :cond_4

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v7, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2
.end method

.method private release()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    iget-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->refresh()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->release()V

    return-void
.end method
