.class public Landroid/graphics/Atlas;
.super Ljava/lang/Object;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$1;,
        Landroid/graphics/Atlas$SlicePolicy;,
        Landroid/graphics/Atlas$Policy;,
        Landroid/graphics/Atlas$Entry;,
        Landroid/graphics/Atlas$Type;
    }
.end annotation


# static fields
.field public static final FLAG_ADD_PADDING:I = 0x2

.field public static final FLAG_ALLOW_ROTATIONS:I = 0x1

.field public static final FLAG_DEFAULTS:I = 0x2


# instance fields
.field private final mPolicy:Landroid/graphics/Atlas$Policy;


# direct methods
.method public constructor <init>(Landroid/graphics/Atlas$Type;II)V
    .locals 1
    .param p1    # Landroid/graphics/Atlas$Type;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 1
    .param p1    # Landroid/graphics/Atlas$Type;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Atlas;->findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    return-void
.end method

.method private static findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;
    .locals 3
    .param p0    # Landroid/graphics/Atlas$Type;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Atlas$1;->$SwitchMap$android$graphics$Atlas$Type:[I

    invoke-virtual {p0}, Landroid/graphics/Atlas$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;

    invoke-direct {v2, v1}, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;

    invoke-direct {v2, v1}, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;

    invoke-direct {v2, v1}, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;

    invoke-direct {v2, v1}, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public pack(II)Landroid/graphics/Atlas$Entry;
    .locals 1
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/graphics/Atlas$Entry;

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Atlas$Entry;

    invoke-direct {p3}, Landroid/graphics/Atlas$Entry;-><init>()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Atlas$Policy;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v0

    return-object v0
.end method
