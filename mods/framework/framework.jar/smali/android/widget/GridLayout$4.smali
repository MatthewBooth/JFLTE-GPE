.class final Landroid/widget/GridLayout$4;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    return p2
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    return p2
.end method
