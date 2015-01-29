.class public interface abstract Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.super Ljava/lang/Object;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTriggerListener"
.end annotation


# static fields
.field public static final CENTER_HANDLE:I = 0x1

.field public static final NO_HANDLE:I


# virtual methods
.method public abstract onFinishFinalAnimation()V
.end method

.method public abstract onGrabbed(Landroid/view/View;I)V
.end method

.method public abstract onGrabbedStateChange(Landroid/view/View;I)V
.end method

.method public abstract onReleased(Landroid/view/View;I)V
.end method

.method public abstract onTrigger(Landroid/view/View;I)V
.end method
