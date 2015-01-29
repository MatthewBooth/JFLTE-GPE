.class final Landroid/graphics/drawable/Ripple$LogInterpolator;
.super Ljava/lang/Object;
.source "Ripple.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Ripple$1;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Ripple$1;

    invoke-direct {p0}, Landroid/graphics/drawable/Ripple$LogInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1    # F

    const/high16 v0, 0x3f800000

    const-wide/high16 v2, 0x4079000000000000L

    neg-float v1, p1

    float-to-double v4, v1

    const-wide v6, 0x3ff6666666666666L

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
