.class Lcom/android/keyguard/PagedView$7;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->endReordering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PagedView$7;->this$0:Lcom/android/keyguard/PagedView;

    iput-object p2, p0, Lcom/android/keyguard/PagedView$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/PagedView$7;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, p0, Lcom/android/keyguard/PagedView$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->zoomIn(Ljava/lang/Runnable;)Z

    return-void
.end method
