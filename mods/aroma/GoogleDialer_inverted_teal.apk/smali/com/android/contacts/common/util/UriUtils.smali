.class public Lcom/android/contacts/common/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method public static areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1
    .param p0    # Landroid/net/Uri;
    .param p1    # Landroid/net/Uri;

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isEncodedContactUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0    # Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "encoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static uriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/net/Uri;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
