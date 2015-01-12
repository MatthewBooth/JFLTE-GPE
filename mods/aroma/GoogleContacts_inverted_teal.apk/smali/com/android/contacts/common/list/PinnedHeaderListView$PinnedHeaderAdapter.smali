.class public interface abstract Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;
.super Ljava/lang/Object;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/PinnedHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PinnedHeaderAdapter"
.end annotation


# virtual methods
.method public abstract configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
.end method

.method public abstract getPinnedHeaderCount()I
.end method

.method public abstract getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getScrollPositionForHeader(I)I
.end method
