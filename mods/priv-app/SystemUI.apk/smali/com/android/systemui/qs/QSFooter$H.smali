.class Lcom/android/systemui/qs/QSFooter$H;
.super Landroid/os/Handler;
.source "QSFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSFooter$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSFooter;
    .param p2    # Landroid/os/Looper;
    .param p3    # Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSFooter$H;-><init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/4 v1, 0x0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v1, "handleRefreshState"

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    # invokes: Lcom/android/systemui/qs/QSFooter;->handleRefreshState()V
    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->access$800(Lcom/android/systemui/qs/QSFooter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    const-string v1, "handleClick"

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    # invokes: Lcom/android/systemui/qs/QSFooter;->handleClick()V
    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->access$900(Lcom/android/systemui/qs/QSFooter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QSFooter"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    # getter for: Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;
    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->access$1000(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
