.class Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;-><init>(Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;-><init>(Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/dialer/CallDetailActivity;
    .param p2    # Lcom/android/dialer/CallDetailActivity$1;

    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
    .param p2    # J

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v2, 0x7f0e0066

    invoke-virtual {v1, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearPendingRequests()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v2, 0x7f0e0066

    invoke-virtual {v1, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
