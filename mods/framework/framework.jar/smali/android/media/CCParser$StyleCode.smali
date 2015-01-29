.class Landroid/media/CCParser$StyleCode;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleCode"
.end annotation


# static fields
.field static final COLOR_BLUE:I = 0x2

.field static final COLOR_CYAN:I = 0x3

.field static final COLOR_GREEN:I = 0x1

.field static final COLOR_INVALID:I = 0x7

.field static final COLOR_MAGENTA:I = 0x6

.field static final COLOR_RED:I = 0x4

.field static final COLOR_WHITE:I = 0x0

.field static final COLOR_YELLOW:I = 0x5

.field static final STYLE_ITALICS:I = 0x1

.field static final STYLE_UNDERLINE:I = 0x2

.field static final mColorMap:[Ljava/lang/String;


# instance fields
.field final mColor:I

.field final mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WHITE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GREEN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BLUE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CYAN"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "RED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "YELLOW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MAGENTA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    iput p2, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    return-void
.end method

.method static fromByte(B)Landroid/media/CCParser$StyleCode;
    .locals 3
    .param p0    # B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x1

    and-int/lit8 v0, v2, 0x7

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x2

    :cond_0
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    or-int/lit8 v1, v1, 0x1

    :cond_1
    new-instance v2, Landroid/media/CCParser$StyleCode;

    invoke-direct {v2, v1, v0}, Landroid/media/CCParser$StyleCode;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method getColor()I
    .locals 1

    iget v0, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    return v0
.end method

.method isItalics()Z
    .locals 1

    iget v0, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUnderline()Z
    .locals 1

    iget v0, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/media/CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    iget v2, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, ", ITALICS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, ", UNDERLINE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
