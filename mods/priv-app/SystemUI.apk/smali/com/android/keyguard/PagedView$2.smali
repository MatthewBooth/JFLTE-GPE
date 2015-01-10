.class Lcom/android/keyguard/PagedView$2;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PagedView$2;->this$0:Lcom/android/keyguard/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/PagedView$2;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->hideScrollingIndicator(Z)V

    return-void
.end method
