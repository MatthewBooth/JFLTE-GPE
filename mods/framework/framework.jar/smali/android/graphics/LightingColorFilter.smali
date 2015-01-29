.class public Landroid/graphics/LightingColorFilter;
.super Landroid/graphics/ColorFilter;
.source "LightingColorFilter.java"


# instance fields
.field private mAdd:I

.field private mMul:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    iput p2, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    return-void
.end method

.method private static native native_CreateLightingFilter(II)J
.end method

.method private update()V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/LightingColorFilter;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->destroyFilter(J)V

    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    iget v1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->native_CreateLightingFilter(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/LightingColorFilter;->native_instance:J

    return-void
.end method


# virtual methods
.method public getColorAdd()I
    .locals 1

    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    return v0
.end method

.method public getColorMultiply()I
    .locals 1

    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    return v0
.end method

.method public setColorAdd(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    return-void
.end method

.method public setColorMultiply(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    return-void
.end method
