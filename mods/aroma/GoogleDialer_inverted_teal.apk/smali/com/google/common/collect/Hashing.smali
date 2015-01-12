.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# direct methods
.method static smear(I)I
    .locals 2
    .param p0    # I

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method
