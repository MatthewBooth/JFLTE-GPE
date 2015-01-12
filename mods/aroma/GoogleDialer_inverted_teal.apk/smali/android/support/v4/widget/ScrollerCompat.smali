.class public Landroid/support/v4/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
    }
.end annotation


# instance fields
.field mImpl:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

.field mScroller:Ljava/lang/Object;


# virtual methods
.method public abortAnimation()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mImpl:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->abortAnimation(Ljava/lang/Object;)V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mImpl:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCurrX()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mImpl:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mImpl:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mImpl:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mImpl:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startScroll(IIIII)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mImpl:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->startScroll(Ljava/lang/Object;IIIII)V

    return-void
.end method
