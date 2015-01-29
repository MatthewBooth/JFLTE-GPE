.class Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;
.source "CaOperationStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;-><init>(I)V

    return-void
.end method

.method private getEnvironmentSensorPacket()[B
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x1a

    new-array v0, v1, [B

    aput-byte v2, v0, v3

    aput-byte v2, v0, v2

    const/16 v1, 0xc

    aput-byte v1, v0, v4

    aput-byte v4, v0, v5

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v6, v0, v1

    aput-byte v3, v0, v6

    const/4 v1, 0x7

    aput-byte v5, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private getEnvironmentSensorPacket1()[B
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v1, 0xe

    new-array v0, v1, [B

    aput-byte v3, v0, v4

    aput-byte v3, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    aput-byte v5, v0, v6

    aput-byte v4, v0, v5

    aput-byte v3, v0, v7

    const/16 v1, 0x8

    aput-byte v4, v0, v1

    const/16 v1, 0x9

    aput-byte v6, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v5, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    aput-byte v7, v0, v1

    return-object v0
.end method

.method private getPedometer()[B
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0xd

    new-array v0, v1, [B

    aput-byte v2, v0, v3

    aput-byte v2, v0, v2

    const/4 v1, 0x2

    aput-byte v4, v0, v1

    aput-byte v2, v0, v4

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    return-object v0
.end method

.method private getServicePacket(B)[B
    .locals 3
    .param p1    # B

    const/4 v2, 0x1

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    aput-byte v2, v0, v2

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method protected final getPacket(I)[B
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getServicePacket(B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getServicePacket(B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getServicePacket(B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
