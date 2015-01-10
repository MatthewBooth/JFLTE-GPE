.class final Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;
.super Ljava/lang/Object;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;->mTime:J

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 0

    # operator++ for: Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J
    invoke-static {}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->access$008()J

    return-void
.end method
