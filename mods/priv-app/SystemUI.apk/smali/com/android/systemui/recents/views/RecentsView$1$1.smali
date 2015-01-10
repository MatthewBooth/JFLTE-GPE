.class Lcom/android/systemui/recents/views/RecentsView$1$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$1;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsView$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$1$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$1;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$1;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lockCurrentTask()V

    return-void
.end method
