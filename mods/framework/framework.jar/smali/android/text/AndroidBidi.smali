.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .param p0    # I
    .param p1    # [C
    .param p2    # [B
    .param p3    # I
    .param p4    # Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    if-lt v1, p3, :cond_2

    array-length v1, p2

    if-ge v1, p3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p0, -0x2

    goto :goto_0

    :pswitch_4
    const/4 p0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 23
    .param p0    # I
    .param p1    # [B
    .param p2    # I
    .param p3    # [C
    .param p4    # I
    .param p5    # I

    if-nez p5, :cond_0

    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    :goto_0
    return-object v21

    :cond_0
    const/16 v21, 0x1

    move/from16 v0, p0

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    aget-byte v4, p1, p2

    move v13, v4

    const/16 v17, 0x1

    add-int/lit8 v7, p2, 0x1

    add-int v5, p2, p5

    :goto_2
    if-ge v7, v5, :cond_3

    aget-byte v9, p1, v7

    if-eq v9, v4, :cond_1

    move v4, v9

    add-int/lit8 v17, v17, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move/from16 v19, p5

    and-int/lit8 v21, v4, 0x1

    and-int/lit8 v22, v2, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    :cond_4
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_5

    add-int v21, p4, v19

    aget-char v3, p3, v21

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v3, v0, :cond_7

    add-int/lit8 v19, v19, -0x1

    :cond_5
    :goto_3
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p5

    if-eq v0, v1, :cond_6

    add-int/lit8 v17, v17, 0x1

    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    if-ne v13, v2, :cond_9

    and-int/lit8 v21, v13, 0x1

    if-eqz v21, :cond_8

    sget-object v21, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    goto :goto_0

    :cond_7
    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v3, v0, :cond_4

    const/16 v21, 0x9

    move/from16 v0, v21

    if-eq v3, v0, :cond_4

    goto :goto_3

    :cond_8
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    goto :goto_0

    :cond_9
    mul-int/lit8 v21, v17, 0x2

    move/from16 v0, v21

    new-array v8, v0, [I

    move v12, v13

    shl-int/lit8 v10, v13, 0x1a

    const/4 v14, 0x1

    move/from16 v16, p2

    move v4, v13

    move/from16 v7, p2

    add-int v5, p2, v19

    move v15, v14

    :goto_4
    if-ge v7, v5, :cond_c

    aget-byte v9, p1, v7

    if-eq v9, v4, :cond_16

    move v4, v9

    if-le v9, v12, :cond_b

    move v12, v9

    :cond_a
    :goto_5
    add-int/lit8 v14, v15, 0x1

    sub-int v21, v7, v16

    or-int v21, v21, v10

    aput v21, v8, v15

    add-int/lit8 v15, v14, 0x1

    sub-int v21, v7, p2

    aput v21, v8, v14

    shl-int/lit8 v10, v4, 0x1a

    move/from16 v16, v7

    move v14, v15

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v15, v14

    goto :goto_4

    :cond_b
    if-ge v9, v13, :cond_a

    move v13, v9

    goto :goto_5

    :cond_c
    add-int v21, p2, v19

    sub-int v21, v21, v16

    or-int v21, v21, v10

    aput v21, v8, v15

    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_15

    add-int/lit8 v14, v15, 0x1

    aput v19, v8, v14

    add-int/lit8 v14, v14, 0x1

    sub-int v21, p5, v19

    shl-int/lit8 v22, v2, 0x1a

    or-int v21, v21, v22

    aput v21, v8, v14

    :goto_7
    and-int/lit8 v21, v13, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_e

    add-int/lit8 v13, v13, 0x1

    if-le v12, v13, :cond_d

    const/16 v18, 0x1

    :goto_8
    if-eqz v18, :cond_14

    add-int/lit8 v9, v12, -0x1

    :goto_9
    if-lt v9, v13, :cond_14

    const/4 v7, 0x0

    :goto_a
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_13

    aget v21, v8, v7

    aget-byte v21, p1, v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_12

    add-int/lit8 v5, v7, 0x2

    :goto_b
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_10

    aget v21, v8, v5

    aget-byte v21, p1, v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_10

    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    :cond_d
    const/16 v18, 0x0

    goto :goto_8

    :cond_e
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    const/16 v18, 0x1

    :goto_c
    goto :goto_8

    :cond_f
    const/16 v18, 0x0

    goto :goto_c

    :cond_10
    move v11, v7

    add-int/lit8 v6, v5, -0x2

    :goto_d
    if-ge v11, v6, :cond_11

    aget v20, v8, v11

    aget v21, v8, v6

    aput v21, v8, v11

    aput v20, v8, v6

    add-int/lit8 v21, v11, 0x1

    aget v20, v8, v21

    add-int/lit8 v21, v11, 0x1

    add-int/lit8 v22, v6, 0x1

    aget v22, v8, v22

    aput v22, v8, v21

    add-int/lit8 v21, v6, 0x1

    aput v20, v8, v21

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v6, v6, -0x2

    goto :goto_d

    :cond_11
    add-int/lit8 v7, v5, 0x2

    :cond_12
    add-int/lit8 v7, v7, 0x2

    goto :goto_a

    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    :cond_14
    new-instance v21, Landroid/text/Layout$Directions;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Landroid/text/Layout$Directions;-><init>([I)V

    goto/16 :goto_0

    :cond_15
    move v14, v15

    goto :goto_7

    :cond_16
    move v14, v15

    goto/16 :goto_6
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
