.class public Lcom/android/systemui/recents/misc/DebugTrigger;
.super Ljava/lang/Object;
.source "DebugTrigger.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mTriggeredRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/DebugTrigger;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/recents/misc/DebugTrigger;->mTriggeredRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onKeyEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method
