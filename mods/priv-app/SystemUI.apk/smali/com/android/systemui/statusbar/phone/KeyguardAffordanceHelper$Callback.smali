.class public interface abstract Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getAffordanceFalsingFactor()F
.end method

.method public abstract getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end method

.method public abstract getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end method

.method public abstract getLeftPreview()Landroid/view/View;
.end method

.method public abstract getPageWidth()F
.end method

.method public abstract getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end method

.method public abstract getRightPreview()Landroid/view/View;
.end method

.method public abstract onAnimationToSideEnded()V
.end method

.method public abstract onAnimationToSideStarted(Z)V
.end method

.method public abstract onSwipingStarted()V
.end method
