.class Landroid/widget/RadialTimePickerView$IntHolder;
.super Ljava/lang/Object;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntHolder"
.end annotation


# instance fields
.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/RadialTimePickerView$IntHolder;->mValue:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView$IntHolder;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/widget/RadialTimePickerView$IntHolder;->mValue:I

    return-void
.end method
