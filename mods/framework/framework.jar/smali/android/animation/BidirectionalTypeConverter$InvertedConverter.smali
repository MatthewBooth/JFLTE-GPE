.class Landroid/animation/BidirectionalTypeConverter$InvertedConverter;
.super Landroid/animation/BidirectionalTypeConverter;
.source "BidirectionalTypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/BidirectionalTypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvertedConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/BidirectionalTypeConverter",
        "<TFrom;TTo;>;"
    }
.end annotation


# instance fields
.field private mConverter:Landroid/animation/BidirectionalTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/BidirectionalTypeConverter",
            "<TTo;TFrom;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/animation/BidirectionalTypeConverter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/BidirectionalTypeConverter",
            "<TTo;TFrom;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/BidirectionalTypeConverter;->getTargetType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/BidirectionalTypeConverter;->getSourceType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/animation/BidirectionalTypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object p1, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFrom;)TTo;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    invoke-virtual {v0, p1}, Landroid/animation/BidirectionalTypeConverter;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTo;)TFrom;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    invoke-virtual {v0, p1}, Landroid/animation/BidirectionalTypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
