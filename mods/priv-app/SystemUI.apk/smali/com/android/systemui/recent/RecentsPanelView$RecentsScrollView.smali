.class public interface abstract Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentsScrollView"
.end annotation


# virtual methods
.method public abstract drawFadedEdges(Landroid/graphics/Canvas;IIII)V
.end method

.method public abstract findViewForTask(I)Landroid/view/View;
.end method

.method public abstract numItemsInOneScreenful()I
.end method

.method public abstract setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
.end method

.method public abstract setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
.end method

.method public abstract setMinSwipeAlpha(F)V
.end method

.method public abstract setOnScrollListener(Ljava/lang/Runnable;)V
.end method
