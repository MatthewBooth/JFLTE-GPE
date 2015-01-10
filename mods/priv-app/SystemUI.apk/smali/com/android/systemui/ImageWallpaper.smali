.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    }
.end annotation


# instance fields
.field mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

.field mIsHwAccelerated:Z

.field mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method

.method private static isEmulator()Z
    .locals 3

    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    :cond_0
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    return-object v0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->trimMemory(I)V

    :cond_0
    return-void
.end method
