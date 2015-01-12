.class public interface abstract Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;
.super Ljava/lang/Object;
.source "OverlappingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/widget/OverlappingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PanelSlideCallbacks"
.end annotation


# virtual methods
.method public abstract isScrollableChildUnscrolled()Z
.end method

.method public abstract onPanelClosed(Landroid/view/View;)V
.end method

.method public abstract onPanelFlingReachesEdge(I)V
.end method

.method public abstract onPanelOpened(Landroid/view/View;)V
.end method

.method public abstract onPanelSlide(Landroid/view/View;F)V
.end method
