.class Lcom/google/android/gms/analytics/o;
.super Ljava/lang/Object;


# direct methods
.method static af(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x9

    invoke-static {}, Lcom/google/android/gms/analytics/o;->version()I

    move-result v3

    if-ge v3, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v2, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    move v0, v1

    goto :goto_0
.end method

.method public static version()I
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
