.class Landroid/graphics/Atlas$SlicePolicy;
.super Landroid/graphics/Atlas$Policy;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlicePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$SplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$Cell;
    }
.end annotation


# instance fields
.field private final mAllowRotation:Z

.field private final mPadding:I

.field private final mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

.field private final mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# direct methods
.method constructor <init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/graphics/Atlas$Policy;-><init>(Landroid/graphics/Atlas$1;)V

    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v1, v4}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    iput-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mAllowRotation:Z

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    :goto_1
    iput v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v0, v4}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iget-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v0, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object p4, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z
    .locals 9
    .param p1    # Landroid/graphics/Atlas$SlicePolicy$Cell;
    .param p2    # Landroid/graphics/Atlas$SlicePolicy$Cell;
    .param p3    # I
    .param p4    # I
    .param p5    # Landroid/graphics/Atlas$Entry;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lt v7, p3, :cond_0

    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-ge v7, p4, :cond_3

    :cond_0
    iget-boolean v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mAllowRotation:Z

    if-eqz v7, :cond_1

    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lt v7, p4, :cond_1

    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-ge v7, p3, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    move v5, p3

    move p3, p4

    move p4, v5

    const/4 v3, 0x1

    :cond_3
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    sub-int v1, v6, p3

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    sub-int v0, v6, p4

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v2, v8}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    new-instance v4, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v4, v8}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    add-int/2addr v6, p3

    iget v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    sub-int v6, v1, v6

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    add-int/2addr v6, p4

    iget v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    sub-int v6, v0, v6

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iget-object v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    invoke-interface {v6, v1, v0, p3, p4}, Landroid/graphics/Atlas$SlicePolicy$SplitDecision;->splitHorizontal(IIII)Z

    move-result v6

    if-eqz v6, :cond_5

    iput p4, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    :goto_1
    iget v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez v6, :cond_4

    iget v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez v6, :cond_4

    iput-object v2, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    move-object p2, v2

    :cond_4
    iget v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez v6, :cond_6

    iget v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez v6, :cond_6

    iput-object v4, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    :goto_2
    iput-object v8, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v6, p5, Landroid/graphics/Atlas$Entry;->x:I

    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v6, p5, Landroid/graphics/Atlas$Entry;->y:I

    iput-boolean v3, p5, Landroid/graphics/Atlas$Entry;->rotated:Z

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iput p3, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    move-object v5, v2

    move-object v2, v4

    move-object v4, v5

    goto :goto_1

    :cond_6
    iget-object v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v6, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_2
.end method


# virtual methods
.method pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/graphics/Atlas$Entry;

    iget-object v0, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    :goto_0
    if-eqz v1, :cond_1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Atlas$SlicePolicy;->insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-object p3

    :cond_0
    move-object v2, v1

    iget-object v1, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1
.end method
