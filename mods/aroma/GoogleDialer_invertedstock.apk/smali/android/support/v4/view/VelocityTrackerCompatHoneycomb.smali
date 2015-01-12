.class Landroid/support/v4/view/VelocityTrackerCompatHoneycomb;
.super Ljava/lang/Object;
.source "VelocityTrackerCompatHoneycomb.java"


# direct methods
.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p0    # Landroid/view/VelocityTracker;
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p0    # Landroid/view/VelocityTracker;
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method
