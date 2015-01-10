.class public Lcom/android/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# static fields
.field static sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

.field mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

.field mMaxIconCacheSize:I

.field mMaxThumbnailCacheSize:I

.field mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    iget v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    iget v8, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    new-instance v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    new-instance v0, Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-direct {v0, v7}, Lcom/android/systemui/recents/model/DrawableLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    new-instance v0, Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/model/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    new-instance v0, Lcom/android/systemui/recents/model/StringLruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/StringLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/DrawableLruCache;Lcom/android/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method private static getRecentTasks(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Ljava/util/List;
    .locals 4
    .param p0    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p1    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method


# virtual methods
.method public deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 2
    .param p1    # Lcom/android/systemui/recents/model/Task;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I
    .locals 1
    .param p1    # Landroid/app/ActivityManager$TaskDescription;
    .param p2    # Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    goto :goto_0
.end method

.method public getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2    # Landroid/app/ActivityManager$TaskDescription;
    .param p3    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p4    # Landroid/content/res/Resources;
    .param p5    # Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .param p6    # Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    if-eqz p6, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v7}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    :cond_2
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v6}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    move-object v7, v6

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getAndUpdateActivityLabel(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2    # Landroid/app/ActivityManager$TaskDescription;
    .param p3    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p4    # Lcom/android/systemui/recents/model/ActivityInfoHandle;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/StringLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    :cond_2
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3

    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/recents/model/StringLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "RecentsTaskLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing ActivityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public getTaskStack(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;IIZZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/recents/model/TaskStack;
    .locals 32
    .param p1    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2    # Landroid/content/res/Resources;
    .param p3    # I
    .param p4    # I
    .param p5    # Z
    .param p6    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy;",
            "Landroid/content/res/Resources;",
            "IIZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/model/TaskStack;"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v24

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getRecentTasks(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Ljava/util/List;

    move-result-object v30

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v29

    const/16 v26, 0x0

    :goto_0
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v2, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v28

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v28

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(ILandroid/content/Intent;IJJ)V

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v23

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    const/16 v25, 0x1

    :goto_1
    const/4 v9, 0x0

    if-lez p3, :cond_7

    move-object/from16 v0, v28

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move/from16 v0, p3

    if-ne v3, v0, :cond_6

    const/4 v9, 0x1

    :cond_0
    :goto_2
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityLabel(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v28

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I

    move-result v17

    if-nez v25, :cond_1

    iget-object v3, v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_9

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    :goto_3
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_a

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v21

    :goto_4
    new-instance v10, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v28

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_b

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, v28

    iget v13, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v28

    iget v14, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    add-int/lit8 v3, v29, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_c

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    move/from16 v19, v0

    move-object v11, v2

    invoke-direct/range {v10 .. v21}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Landroid/graphics/drawable/Drawable;IZZLandroid/graphics/Bitmap;Ljava/lang/String;)V

    if-eqz v9, :cond_3

    if-eqz p5, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v4, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/recents/model/BitmapLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    :cond_2
    iget-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p7, :cond_4

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/ActivityInfoHandle;-><init>()V

    goto/16 :goto_1

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_7
    if-lez p4, :cond_0

    sub-int v3, v29, p4

    move/from16 v0, v26

    if-lt v0, v3, :cond_8

    const/4 v9, 0x1

    :goto_7
    goto/16 :goto_2

    :cond_8
    const/4 v9, 0x0

    goto :goto_7

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_c
    const/16 v18, 0x0

    goto :goto_6

    :cond_d
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Ljava/util/List;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->createAffiliatedGroupings(Lcom/android/systemui/recents/RecentsConfiguration;)V

    return-object v27
.end method

.method public loadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 5
    .param p1    # Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez v2, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x6

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/BitmapLruCache;->evictAll()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/DrawableLruCache;->evictAll()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/StringLruCache;->evictAll()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    return-void
.end method

.method public reload(Landroid/content/Context;IZ)Lcom/android/systemui/recents/model/SpaceNode;
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getTaskStack(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;IIZZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v10

    new-instance v9, Lcom/android/systemui/recents/model/SpaceNode;

    invoke-direct {v9}, Lcom/android/systemui/recents/model/SpaceNode;-><init>()V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/model/SpaceNode;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoader;->start(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTasks(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->setTasks(Ljava/util/List;)V

    return-object v9
.end method

.method stopLoader()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoader;->stop()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1    # Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    return-void
.end method
