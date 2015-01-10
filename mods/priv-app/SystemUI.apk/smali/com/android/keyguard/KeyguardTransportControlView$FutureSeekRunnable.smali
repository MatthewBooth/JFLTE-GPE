.class Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FutureSeekRunnable"
.end annotation


# instance fields
.field private mPending:Z

.field private mProgress:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    iget v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->scrubTo(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->mPending:Z

    return-void
.end method

.method setProgress(I)V
    .locals 4
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->mProgress:I

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->mPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->mPending:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
