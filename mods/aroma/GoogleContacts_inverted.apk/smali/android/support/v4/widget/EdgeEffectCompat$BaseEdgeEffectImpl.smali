.class Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseEdgeEffectImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/graphics/Canvas;

    const/4 v0, 0x0

    return v0
.end method

.method public finish(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # F

    const/4 v0, 0x0

    return v0
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public setSize(Ljava/lang/Object;II)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # I
    .param p3    # I

    return-void
.end method
