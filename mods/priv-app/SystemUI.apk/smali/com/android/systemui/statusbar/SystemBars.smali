.class public Lcom/android/systemui/statusbar/SystemBars;
.super Lcom/android/systemui/SystemUI;
.source "SystemBars.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;


# instance fields
.field private mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

.field private mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Throwable;

    const-string v0, "SystemBars"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createStatusBarFromConfig()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f0b0000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "No status bar component configured"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mComponents:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onNoService()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SystemBars;->createStatusBarFromConfig()V

    return-void
.end method

.method public onServiceStartAttempt()J
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-wide/16 v0, 0x1f4

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor;

    const-string v1, "SystemBars"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    const-string v4, "bar_service_component"

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/ServiceMonitor;-><init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->start()V

    return-void
.end method
