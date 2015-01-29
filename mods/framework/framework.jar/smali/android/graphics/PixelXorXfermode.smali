.class public Landroid/graphics/PixelXorXfermode;
.super Landroid/graphics/Xfermode;
.source "PixelXorXfermode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1    # I

    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    invoke-static {p1}, Landroid/graphics/PixelXorXfermode;->nativeCreate(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PixelXorXfermode;->native_instance:J

    return-void
.end method

.method private static native nativeCreate(I)J
.end method
