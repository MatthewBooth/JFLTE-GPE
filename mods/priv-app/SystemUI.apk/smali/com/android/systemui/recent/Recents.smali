.class public Lcom/android/systemui/recent/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# instance fields
.field mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

.field mBootCompleted:Z

.field mUseAlternateRecents:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mBootCompleted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/Recents;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/Recents;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/Recents;->sendBroadcastSafely(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcastSafely(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mBootCompleted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private startActivitySafely(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
    .param p2    # Landroid/os/Bundle;

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mBootCompleted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onCancelPreloadingRecents()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/Recents;->sendBroadcastSafely(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    goto :goto_0
.end method

.method public hideRecents(ZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z

    iget-boolean v1, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onHideRecents(ZZ)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/Recents;->sendBroadcastSafely(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    goto :goto_0
.end method

.method protected onBootCompleted()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onBootCompleted()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mBootCompleted:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public preloadRecents()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onPreloadRecents()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/Recents;->sendBroadcastSafely(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 1
    .param p1    # Lcom/android/systemui/RecentsComponent$Callbacks;

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->setRecentsComponentCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    :cond_0
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onShowNextAffiliatedTask()V

    :cond_0
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onShowPrevAffiliatedTask()V

    :cond_0
    return-void
.end method

.method public showRecents(ZLandroid/view/View;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onShowRecents(ZLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onStart()V

    :cond_1
    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/recent/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 38
    .param p1    # Landroid/view/Display;
    .param p2    # I
    .param p3    # Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    move/from16 v34, v0

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onToggleRecents(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const-string v34, "Recents"

    const-string v35, "toggle recents panel"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v13

    new-instance v15, Landroid/content/Intent;

    const-string v34, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    move-object/from16 v0, v34

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "com.android.systemui"

    const-string v35, "com.android.systemui.recent.RecentsActivity"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v34, 0x10800000

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f050017

    const v36, 0x7f050018

    invoke-static/range {v34 .. v36}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v35

    new-instance v36, Landroid/os/UserHandle;

    const/16 v37, -0x2

    invoke-direct/range {v36 .. v37}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    const-string v34, "Recents"

    const-string v35, "Failed to launch RecentAppsIntent"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    new-instance v35, Landroid/os/UserHandle;

    const/16 v36, -0x2

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v13}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v34, v0

    if-eqz v34, :cond_3

    invoke-virtual {v13}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    check-cast v34, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v34, 0x7f0c0003

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v30, v0

    const v34, 0x7f0c0004

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v27, v0

    if-nez v12, :cond_4

    new-instance v34, Ljava/lang/RuntimeException;

    const-string v35, "Recents thumbnail is null"

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v34

    :cond_3
    const/16 v34, 0x1

    const/16 v35, 0x1

    sget-object v36, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v34 .. v36}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance v34, Landroid/graphics/Canvas;

    move-object/from16 v0, v34

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    cmpl-float v34, v34, v30

    if-nez v34, :cond_5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    cmpl-float v34, v34, v27

    if-eqz v34, :cond_6

    :cond_5
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_6

    new-instance v34, Ljava/lang/RuntimeException;

    const-string v35, "Recents thumbnail is null"

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v34

    :cond_6
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    const v34, 0x7f0c000e

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v4, v0

    const v34, 0x7f0c000d

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    const v34, 0x7f0c000b

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v28, v0

    const v34, 0x7f0c0005

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v34, v4, v5

    add-float v34, v34, v28

    add-float v34, v34, v30

    const/high16 v35, 0x40000000

    mul-float v35, v35, v26

    add-float v31, v34, v35

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v31

    const/high16 v35, 0x40000000

    div-float v34, v34, v35

    add-float v34, v34, v4

    add-float v34, v34, v5

    add-float v34, v34, v26

    add-float v34, v34, v28

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v32, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0

    const v35, 0x7f0c0004

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v26

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, p2

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    sub-int v34, v34, v32

    const v35, 0x7f0c0003

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v32, v34, v35

    :cond_7
    :goto_2
    new-instance v34, Lcom/android/systemui/recent/Recents$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/Recents$1;-><init>(Lcom/android/systemui/recent/Recents;)V

    move-object/from16 v0, p3

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v12, v1, v2, v3}, Landroid/app/ActivityOptions;->makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v18

    const-string v34, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/recent/Recents;->startActivitySafely(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    const v34, 0x7f0c00b9

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v29, v0

    const v34, 0x7f0c0005

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v26, v0

    const v34, 0x7f0c000c

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v25, v0

    const v34, 0x7f0c0006

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v17, v0

    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v16, v0

    const v34, 0x7f0c0007

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v9, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v8, v0

    const v34, 0x1050010

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v21, v24

    add-float v34, v29, v27

    const/high16 v35, 0x40000000

    mul-float v35, v35, v26

    add-float v34, v34, v35

    add-float v34, v34, v25

    add-float v34, v34, v16

    add-float v34, v34, v21

    add-float v34, v34, v25

    add-float v14, v34, v8

    const v34, 0x7f0c000f

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v20, v0

    const v34, 0x7f0c000a

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    const v35, 0x7f0c0003

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v26

    sub-float v34, v34, v20

    sub-float v34, v34, v22

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v32, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v24

    sub-float v34, v34, v14

    const/high16 v35, 0x40000000

    div-float v34, v34, v35

    add-float v34, v34, v29

    add-float v34, v34, v21

    add-float v34, v34, v26

    add-float v34, v34, v24

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v33, v0

    goto/16 :goto_2
.end method
