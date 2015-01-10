.class public Lcom/android/systemui/statusbar/phone/BounceInterpolator;
.super Ljava/lang/Object;
.source "BounceInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1    # F

    const/high16 v2, 0x40f20000

    const v1, 0x3f8ccccd

    mul-float/2addr p1, v1

    const v1, 0x3eba2e8c

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    mul-float v1, v2, p1

    mul-float/2addr v1, p1

    :goto_0
    return v1

    :cond_0
    const v1, 0x3f3a2e8c

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    const v1, 0x3f0ba2e9

    sub-float v0, p1, v1

    mul-float v1, v2, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f400000

    add-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const v1, 0x3f68ba2f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    const v1, 0x3f51745d

    sub-float v0, p1, v1

    mul-float v1, v2, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f700000

    add-float/2addr v1, v2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000

    goto :goto_0
.end method
