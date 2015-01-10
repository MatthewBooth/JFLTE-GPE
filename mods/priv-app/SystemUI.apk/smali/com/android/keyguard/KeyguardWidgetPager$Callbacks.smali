.class public interface abstract Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;
.super Ljava/lang/Object;
.source "KeyguardWidgetPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardWidgetPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onAddView(Landroid/view/View;)V
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method public abstract onUserActivityTimeoutChanged()V
.end method

.method public abstract userActivity()V
.end method
