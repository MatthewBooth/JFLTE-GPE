.class public Lcom/android/systemui/recent/ColorDrawableWithDimensions;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ColorDrawableWithDimensions.java"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput p2, p0, Lcom/android/systemui/recent/ColorDrawableWithDimensions;->mWidth:I

    iput p3, p0, Lcom/android/systemui/recent/ColorDrawableWithDimensions;->mHeight:I

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/ColorDrawableWithDimensions;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/ColorDrawableWithDimensions;->mWidth:I

    return v0
.end method
