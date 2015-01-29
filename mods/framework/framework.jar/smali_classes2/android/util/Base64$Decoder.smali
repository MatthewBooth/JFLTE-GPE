.class Landroid/util/Base64$Decoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1    # I
    .param p2    # [B

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    iput-object p2, p0, Landroid/util/Base64$Decoder;->output:[B

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    :goto_0
    iput-object v0, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    iput v1, p0, Landroid/util/Base64$Decoder;->state:I

    iput v1, p0, Landroid/util/Base64$Decoder;->value:I

    return-void

    :cond_0
    sget-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_0
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1    # I

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 11
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    iget v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    move v5, p2

    add-int/2addr p3, p2

    iget v7, p0, Landroid/util/Base64$Decoder;->state:I

    iget v8, p0, Landroid/util/Base64$Decoder;->value:I

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/util/Base64$Decoder;->output:[B

    iget-object v0, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    :goto_1
    if-ge v5, p3, :cond_c

    if-nez v7, :cond_2

    :goto_2
    add-int/lit8 v9, v5, 0x4

    if-gt v9, p3, :cond_1

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v9, v0, v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    or-int v8, v9, v10

    if-ltz v8, :cond_1

    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    :cond_1
    if-lt v5, p3, :cond_2

    move v3, v2

    :goto_3
    if-nez p4, :cond_b

    iput v7, p0, Landroid/util/Base64$Decoder;->state:I

    iput v8, p0, Landroid/util/Base64$Decoder;->value:I

    iput v3, p0, Landroid/util/Base64$Decoder;->op:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v5, 0x1

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v1, v0, v9

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_4
    move v5, v6

    goto :goto_1

    :pswitch_0
    if-ltz v1, :cond_4

    move v8, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    goto :goto_0

    :pswitch_1
    if-ltz v1, :cond_5

    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_2
    if-ltz v1, :cond_6

    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, -0x2

    if-ne v1, v9, :cond_7

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    const/4 v7, 0x4

    move v2, v3

    goto :goto_4

    :cond_7
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_3
    if-ltz v1, :cond_8

    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    add-int/lit8 v2, v2, 0x3

    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    const/4 v9, -0x2

    if-ne v1, v9, :cond_9

    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x2

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    add-int/lit8 v2, v2, 0x2

    const/4 v7, 0x5

    goto :goto_4

    :cond_9
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_4
    const/4 v9, -0x2

    if-ne v1, v9, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    packed-switch v7, :pswitch_data_1

    move v2, v3

    :goto_5
    iput v7, p0, Landroid/util/Base64$Decoder;->state:I

    iput v2, p0, Landroid/util/Base64$Decoder;->op:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :pswitch_6
    move v2, v3

    goto :goto_5

    :pswitch_7
    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    goto :goto_5

    :pswitch_9
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v9, v8, 0x2

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    move v2, v3

    goto :goto_5

    :pswitch_a
    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_c
    move v3, v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
