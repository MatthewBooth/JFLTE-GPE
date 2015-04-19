.class Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 5
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x1

    const/4 v3, 0x0

    and-int v4, p1, p2

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    or-int v0, p3, p4

    and-int v4, p1, v0

    if-eqz v4, :cond_1

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bad arguments"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr p0, v3

    :cond_3
    :goto_2
    return p0

    :cond_4
    if-eqz v2, :cond_3

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr p0, v3

    goto :goto_2
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 p1, v1, 0xf7

    const/16 v1, 0x40

    const/16 v2, 0x80

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    if-ne p1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public metaStateHasNoModifiers(I)Z
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalizeMetaState(I)I
    .locals 1
    .param p1    # I

    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    and-int/lit8 v0, p1, 0x30

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x2

    :cond_1
    and-int/lit16 v0, p1, 0xf7

    return v0
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1    # Landroid/view/KeyEvent;

    return-void
.end method
