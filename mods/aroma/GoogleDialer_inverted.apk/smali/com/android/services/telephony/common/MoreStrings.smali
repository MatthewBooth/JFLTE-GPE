.class public Lcom/android/services/telephony/common/MoreStrings;
.super Ljava/lang/Object;
.source "MoreStrings.java"


# direct methods
.method public static toSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
