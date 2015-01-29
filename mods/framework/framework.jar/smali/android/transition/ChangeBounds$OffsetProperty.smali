.class abstract Landroid/transition/ChangeBounds$OffsetProperty;
.super Landroid/util/IntProperty;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OffsetProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field mPreviousValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/transition/ChangeBounds$OffsetProperty;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract offsetBy(Landroid/view/View;I)V
.end method

.method public setValue(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    iget v1, p0, Landroid/transition/ChangeBounds$OffsetProperty;->mPreviousValue:I

    sub-int v0, p2, v1

    invoke-virtual {p0, p1, v0}, Landroid/transition/ChangeBounds$OffsetProperty;->offsetBy(Landroid/view/View;I)V

    iput p2, p0, Landroid/transition/ChangeBounds$OffsetProperty;->mPreviousValue:I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # I

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeBounds$OffsetProperty;->setValue(Landroid/view/View;I)V

    return-void
.end method
