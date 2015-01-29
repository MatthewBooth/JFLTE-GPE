.class public interface abstract Lcom/android/internal/widget/WaveView$OnTriggerListener;
.super Ljava/lang/Object;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTriggerListener"
.end annotation


# static fields
.field public static final CENTER_HANDLE:I = 0xa

.field public static final NO_HANDLE:I


# virtual methods
.method public abstract onGrabbedStateChange(Landroid/view/View;I)V
.end method

.method public abstract onTrigger(Landroid/view/View;I)V
.end method
