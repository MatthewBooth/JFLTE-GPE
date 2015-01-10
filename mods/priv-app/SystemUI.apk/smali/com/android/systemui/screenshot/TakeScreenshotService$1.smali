.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    # getter for: Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v1, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;
    invoke-static {v1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$002(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    :cond_0
    # getter for: Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_2

    :goto_2
    invoke-virtual {v4, v5, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
