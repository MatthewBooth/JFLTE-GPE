.class public final Landroid/view/ViewAnimationUtils;
.super Ljava/lang/Object;
.source "ViewAnimationUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .locals 6
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I
    .param p3    # F
    .param p4    # F

    new-instance v0, Landroid/animation/RevealAnimator;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/animation/RevealAnimator;-><init>(Landroid/view/View;IIFF)V

    return-object v0
.end method
