.class Lcom/android/server/media/MediaRouterService$UserRecord$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

.field final synthetic val$indent:Ljava/lang/String;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$indent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$pw:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$indent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
