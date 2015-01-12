.class Landroid/support/v4/view/KeyEventCompatHoneycomb;
.super Ljava/lang/Object;
.source "KeyEventCompatHoneycomb.java"


# direct methods
.method public static metaStateHasModifiers(II)Z
    .locals 1
    .param p0    # I
    .param p1    # I

    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1
    .param p0    # I

    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static normalizeMetaState(I)I
    .locals 1
    .param p0    # I

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method
