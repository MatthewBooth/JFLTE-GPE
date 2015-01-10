.class Lcom/android/systemui/doze/DozeService$1;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->onDreamingStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeService;->startDozing()V

    :cond_0
    return-void
.end method
