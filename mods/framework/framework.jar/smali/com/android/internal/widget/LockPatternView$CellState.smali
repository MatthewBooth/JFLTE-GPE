.class public Lcom/android/internal/widget/LockPatternView$CellState;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellState"
.end annotation


# instance fields
.field public alpha:F

.field public lineAnimator:Landroid/animation/ValueAnimator;

.field public lineEndX:F

.field public lineEndY:F

.field public scale:F

.field public size:F

.field public translateY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/internal/widget/LockPatternView$CellState;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    iput v2, p0, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    iput v1, p0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iput v1, p0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    return-void
.end method
