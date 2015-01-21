.class final Landroid/support/v7/graphics/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;)I
    .locals 2
    .param p1    # Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    .param p2    # Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    invoke-virtual {p2}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getVolume()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getVolume()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    check-cast p2, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/graphics/ColorCutQuantizer$1;->compare(Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;)I

    move-result v0

    return v0
.end method
