.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntrinsicSizeDrawable"
.end annotation


# instance fields
.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;->mIntrinsicWidth:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;->mIntrinsicHeight:I

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;->mIntrinsicWidth:I

    return v0
.end method
