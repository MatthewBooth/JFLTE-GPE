.class public Lcom/android/keyguard/KeyguardDisplayManager;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mPresentation:Landroid/app/Presentation;

.field private mShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$2;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardDisplayManager;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardDisplayManager"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return-void
.end method

.method public show()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardDisplayManager"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return-void
.end method

.method protected updateDisplays(Z)V
    .locals 8
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v5

    if-ne v5, v3, :cond_4

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eq v5, v1, :cond_1

    sget-boolean v5, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "KeyguardDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display gone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v7}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->dismiss()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    sget-boolean v5, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "KeyguardDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keyguard enabled on display: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v5, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v5, v6}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "KeyguardDisplayManager"

    const-string v6, "Invalid display:"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->dismiss()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    goto :goto_2
.end method
