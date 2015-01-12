.class final Lcom/google/android/gsf/Gservices$1;
.super Ljava/lang/Thread;
.source "Gservices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gsf/Gservices$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/google/android/gsf/Gservices$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gsf/Gservices$1$1;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/google/android/gsf/Gservices$1$1;-><init>(Lcom/google/android/gsf/Gservices$1;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
