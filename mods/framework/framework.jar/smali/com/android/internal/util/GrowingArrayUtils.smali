.class public final Lcom/android/internal/util/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/GrowingArrayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .locals 4
    .param p0    # [I
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([II[III)V

    move-object p0, v0

    :cond_1
    aput p2, p0, p1

    return-object p0
.end method

.method public static append([JIJ)[J
    .locals 4
    .param p0    # [J
    .param p1    # I
    .param p2    # J

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object p0, v0

    :cond_1
    aput-wide p2, p0, p1

    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :cond_1
    aput-object p2, p0, p1

    return-object p0
.end method

.method public static append([ZIZ)[Z
    .locals 4
    .param p0    # [Z
    .param p1    # I
    .param p2    # Z

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    move-object p0, v0

    :cond_1
    aput-boolean p2, p0, p1

    return-object p0
.end method

.method public static growSize(I)I
    .locals 1
    .param p0    # I

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p0, 0x2

    goto :goto_0
.end method

.method public static insert([IIII)[I
    .locals 4
    .param p0    # [I
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    aput p3, p0, p2

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy([II[III)V

    aput p3, v0, p2

    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static insert([JIIJ)[J
    .locals 5
    .param p0    # [J
    .param p1    # I
    .param p2    # I
    .param p3    # J

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    aput-wide p3, p0, p2

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy([JI[JII)V

    aput-wide p3, v0, p2

    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p3, p0, p2

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p3, v0, p2

    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static insert([ZIIZ)[Z
    .locals 4
    .param p0    # [Z
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    aput-boolean p3, p0, p2

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    aput-boolean p3, v0, p2

    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    move-object p0, v0

    goto :goto_0
.end method
