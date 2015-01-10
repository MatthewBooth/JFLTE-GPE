.class public Lcom/android/systemui/DessertCaseView$RescalingContainer;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DessertCaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescalingContainer"
.end annotation


# instance fields
.field private mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1606

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    sub-int v6, p4, p2

    int-to-float v4, v6

    sub-int v6, p5, p3

    int-to-float v2, v6

    iget-object v6, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    const/high16 v6, 0x3e800000

    div-float v6, v4, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    float-to-int v5, v6

    iget-object v6, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    const/high16 v6, 0x3e800000

    div-float v6, v2, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    float-to-int v3, v6

    int-to-float v6, p2

    const/high16 v7, 0x3f000000

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v0, v6

    int-to-float v6, p3

    const/high16 v7, 0x3f000000

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v1, v6

    iget-object v6, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    sub-int v7, v0, v5

    sub-int v8, v1, v3

    add-int v9, v0, v5

    add-int v10, v1, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/systemui/DessertCaseView;->layout(IIII)V

    return-void
.end method

.method public setView(Lcom/android/systemui/DessertCaseView;)V
    .locals 0
    .param p1    # Lcom/android/systemui/DessertCaseView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    return-void
.end method
