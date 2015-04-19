.class Lcom/android/ex/variablespeed/VariableSpeedNative;
.super Ljava/lang/Object;
.source "VariableSpeedNative.java"


# direct methods
.method static native getCurrentPosition()I
.end method

.method private static native initializeEngine(IFFIFIIII)V
.end method

.method static initializeEngine(Lcom/android/ex/variablespeed/EngineParameters;)V
    .locals 9
    .param p0    # Lcom/android/ex/variablespeed/EngineParameters;

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getTargetFrames()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getWindowDuration()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getWindowOverlapDuration()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getMaxPlayBufferCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getInitialRate()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getDecodeBufferInitialSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getDecodeBufferMaxSize()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getStartPositionMillis()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/EngineParameters;->getAudioStreamType()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/android/ex/variablespeed/VariableSpeedNative;->initializeEngine(IFFIFIIII)V

    return-void
.end method

.method static loadLibrary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "variablespeed"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static native playFileDescriptor(IJJ)V
.end method

.method static playFromContext(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "descriptor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lcom/android/ex/variablespeed/VariableSpeedNative;->playFileDescriptor(IJJ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/content/res/AssetFileDescriptor;)V

    :goto_0
    return v4

    :catch_0
    move-exception v4

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/content/res/AssetFileDescriptor;)V

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_1

    :catch_3
    move-exception v4

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/content/res/AssetFileDescriptor;)V

    throw v4
.end method

.method static native playUri(Ljava/lang/String;)V
.end method

.method static native setVariableSpeed(F)V
.end method

.method static native shutdownEngine()V
.end method

.method static native startPlayback()V
.end method

.method static native stopPlayback()V
.end method
