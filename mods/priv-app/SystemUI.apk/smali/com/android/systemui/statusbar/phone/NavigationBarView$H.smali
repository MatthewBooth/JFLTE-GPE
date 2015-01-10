.class Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
.super Landroid/os/Handler;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p2    # Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1    # Landroid/os/Message;

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_1

    if-eq v4, v3, :cond_0

    :cond_1
    const-string v5, "PhoneStatusBar/NavigationBarView"

    const-string v6, "*** Invalid layout in navigation bar (%s this=%dx%d cur=%dx%d)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestLayout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x21ee
        :pswitch_0
    .end packed-switch
.end method
